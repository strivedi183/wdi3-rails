class MovieController < ApplicationController
  def homepage
  end
  def movie
  end
  def movie_search
    @title = params['movie_title'].downcase.chomp.gsub(' ','+')
    @results = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@title}")
    @results = JSON(@results.body)
    render ('/movie/movie')
  end
end