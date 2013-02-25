class AlbumsController < ApplicationController
  before_filter :check_if_admin, :except => [:index, :show]
  def index
    @albums = Album.order(:name)
  end
  def new
    @album = Album.new
  end
  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end
  def edit
    @album = Album.find(params[:id])
    render :new
  end
  def update
    album = Album.find(params[:id])
    album.update_attributes(params[:album])
    redirect_to(albums_path)
  end
  def destroy
  end
  def show
    @album = Album.find(params[:id])
  end
end