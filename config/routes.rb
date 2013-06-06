Myamazingtestapp::Application.routes.draw do

  get "business_map/index"

  resources :businesses


	get "events/indeex"
	match "events/index" => "events#index"
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end