R20130218Tunr::Application.routes.draw do
  root :to => 'home#index'

  resources :genres, :artists

  resources :albums do
    member do
      post 'purchase'
    end
  end

  resources :mixtapes do
    member do
      post 'refund'
    end
  end

  resources :songs do
    member do
      get 'purchase'
      post 'buy'
    end
  end

  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end