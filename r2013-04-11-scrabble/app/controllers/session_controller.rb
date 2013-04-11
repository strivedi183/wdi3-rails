class SessionController < ApplicationController
  def new
  end
  def create
    user = User.where(:username => params[:username]).first
    user = User.create(username: params[:username]) if user.nil?
    user.is_online = true
    user.save
    session[:user_id] = user.id
    authenticate
  end
  def destroy
    @auth.is_online = false
    @auth.save
    session[:user_id] = nil
    authenticate
  end
end