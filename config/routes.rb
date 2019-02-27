Rails.application.routes.draw do
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  get "restaurants/:id", to: "restaurants#show"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show"

  # get "restaurants/:restaurant_id/reviews", to: "reviews#index"

  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end

  get "reviews/:id", to: "reviews#show"
end
