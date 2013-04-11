class ChannelsController < ApplicationController
  def index
    @channel = Channel.new
    @channels = Channel.order(:name)
  end
  def create
    channel = Channel.where(name: params[:channel][:name]).first
    channel = Channel.create(params[:channel]) if channel.nil?
    @channel = Channel.new
    @channels = Channel.order(:name)
  end
end