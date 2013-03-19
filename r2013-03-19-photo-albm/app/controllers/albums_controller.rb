class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end
  def create
    album = Album.create(params[:album])
    @albums = Album.order(:name)
  end
  def show
  end
end