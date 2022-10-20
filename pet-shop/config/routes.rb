Rails.application.routes.draw do
  # Using basic 'http' verb + URL + method pattern:
  get 'pets/index'
  resources :shops
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "pets", to: "pets#index"
  # Using 'resource' keyword with just 1 of 7 various REST method options
  resource :pets, only: [:show, :create, :new, :edit, :update]

  # Defines the root path route ("/")
  # root "articles#index"
end
