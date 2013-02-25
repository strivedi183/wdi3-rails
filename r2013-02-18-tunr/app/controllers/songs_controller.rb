class SongsController < ApplicationController
  before_filter :check_if_admin, :except => [:index, :show, :purchase, :buy, :refund]
  def index
    @songs = Song.order(:name)
  end
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs)
    else
      render :new
    end
  end
  def edit
    @song = Song.find(params[:id])
    render :new
  end
  def update
    song = Song.find(params[:id])
    song.update_attributes(params[:song])
    redirect_to(song)
  end
  def destroy
  end
  def show
    @song = Song.find(params[:id])
  end
  def purchase
    @song = Song.find(params[:id])
  end
  def buy
    if params[:song].nil?
      flash[:notice] = "Please assign to a mixtape"
      @song = Song.find(params[:id])
      render :purchase
    else
      song = Song.find(params[:id])
      user = @auth
      user.balance -= song.price
      user.save
      song.update_attributes(params[:song])
      redirect_to(song_path(song.id))
    end
  end
end