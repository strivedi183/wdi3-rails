class MixtapesController < ApplicationController
  before_filter :check_if_logged_in
  def index
    @mixtapes = Mixtape.order(:name)
  end
  def new
    @mixtape = Mixtape.new
  end
  def create
    @mixtape = Mixtape.new(params[:mixtape])
    @auth.mixtapes << @mixtape
    if @mixtape.save
      redirect_to(mixtapes_path)
    else
      render :new
    end
  end
  def edit
    @mixtape = Mixtape.find(params[:id])
    render :new
  end
  def update
    mixtape = Mixtape.find(params[:id])
    mixtape.update_attributes(params[:mixtape])
    redirect_to(mixtapes_path)
  end
  def destroy
  end
  def show
    @mixtape = Mixtape.find(params[:id])
  end
  def refund
    @song = Song.find(params[:id])
    @auth.mixtapes.each do |mixtape|
      if mixtape.songs.include?(@song)
        mixtape.songs.delete(@song)
      end
    end
    @auth.balance += @song.price*0.7
    @auth.save
    redirect_to(mixtapes_path)
  end
end