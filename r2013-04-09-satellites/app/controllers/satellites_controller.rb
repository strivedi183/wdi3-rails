class SatelltesController < ApplicationController
  def create
    satellite = Satellite.create(params[:satellite])
    render json: satellite
  end
end
