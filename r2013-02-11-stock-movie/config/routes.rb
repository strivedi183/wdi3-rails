R20130211StockMovie::Application.routes.draw do
  get '/' => 'home#homepage'
  get '/home' => 'home#homepage'
  get '/about' => 'home#about'
  get '/faq' => 'home#faq'

  get '/stock' => 'stock#homepage'
  get '/stock/stock' => 'stock#stock'
  get '/quote' => 'stock#quote'

  get '/movie' => 'movie#homepage'
  get '/movie/movie' => 'movie#movie'
  get '/movie_search' => 'movie#movie_search'

end
