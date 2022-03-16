Rails.application.routes.draw do
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new", as: "new_restaurant"
  get "restaurants/:id", to: "restaurants#show", as: "restaurant"
  post "restaurants", to: "restaurants#create"

  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: "new_review"
  post "restaurants/:restaurant_id/reviews", to: "reviews#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
