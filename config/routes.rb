Rails.application.routes.draw do
  devise_for :users
  resources :items, except: [:new, :create]
  resources :boxes do
     resources :items, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "boxes#index"
end
