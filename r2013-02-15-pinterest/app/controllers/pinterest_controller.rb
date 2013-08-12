require 'open-uri'
class PinterestController < ApplicationController
  def show
    if params[:query].present?
      query = params[:query].gsub(" ","+")
      url = "http://pinterest.com/search/pins/?q=#{query}"
    else
      url = 'http://pinterest.com'
    end
    doc = Nokogiri::HTML(open(url))
    images = doc.css('img')
    @urls = images.map {|i| i.get_attribute('src')}.select {|u| u.exclude?('avatar')}
  end
end