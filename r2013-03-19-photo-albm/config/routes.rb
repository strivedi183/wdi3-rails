R20130319PhotoAlbm::Application.routes.draw do
  root :to => 'home#index'
  resources :albums, :only => [:index, :new, :create, :show]
end
