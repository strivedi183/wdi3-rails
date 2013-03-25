require 'nokogiri'
require 'open-uri'
class HomeController < ApplicationController
  def index
    @articles = Article.order(:created_at)
  end
  def scrape
    Article.delete_all
    pages = params[:pages].to_i
    j = 0
    url = "https://news.ycombinator.com"
    while j < pages do
    doc = Nokogiri::HTML(open(url))
    titles = doc.css('.title a')
      i = 0
      while i < (titles.count - 1) do
        title_name = titles[i].children.text
        title_url = titles[i].attributes['href'].value
        article = Article.create(title: title_name, url: title_url)
        i += 1
      end
    new_url = titles.last.attributes['href'].value
    if new_url == 'news2'
      url = "https://news.ycombinator.com/"+new_url
    else
      url = "https://news.ycombinator.com"+new_url
    end
    j += 1
    end
    redirect_to root_path
  end
end