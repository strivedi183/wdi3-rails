class PostsController < ApplicationController
  def index
    render :json => {posts: Post.all}
  end
  def update
    post = Post.find(params[:id])
    post.update_attributes(params[:post])
    render :json => {post: post}
  end
  def show
    render :json => {post: Post.find(params[:id])}
  end
end