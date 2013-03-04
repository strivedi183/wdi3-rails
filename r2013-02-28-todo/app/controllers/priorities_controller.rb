class PrioritiesController < ApplicationController
  def index
    @priorities = @auth.priorities.order(:value).reverse
  end
  def create
    priority = Priority.create(params[:priority])
    @auth.priorities << priority
    render :json => priority
  end
  def update
    priority = Priority.find(params[:id])
    priority.update_attributes(params[:priority])
    render :json => priority
  end
end