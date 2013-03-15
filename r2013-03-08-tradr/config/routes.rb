R20130308Tradr::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :users, :only => [:index, :new, :create, :update]
  resources :stocks, :only => [:index, :new, :create, :edit, :update] do
    collection do
      get 'get_quotes', :action => 'get_quotes'
    end
  end
end
