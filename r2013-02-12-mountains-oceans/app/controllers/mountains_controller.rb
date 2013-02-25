class MountainsController < ApplicationController
  def index
    @mountains = Mountain.all
  end
  def new
  end
  def create
    Mountain.create(params[:mountain])
    redirect_to(mountains_path)
  end
  def show
    @mountain = Mountain.find(params[:id])
  end
  def destroy
    mountain = Mountain.find(params[:id])
    mountain.delete
    redirect_to(mountains_path)
  end
  def edit
    @mountain = Mountain.find(params[:id])
    render
  end
  def update
    mountain = Mountain.find(params[:id])
    mountain.update_attributes(params[:mountain])
    redirect_to(mountains_path)
  end
end