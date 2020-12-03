Rails.application.routes.draw do
  resources :booking_tours
  resources :tour_reviews
  get 'home_pages/home'
  get 'users/show'
  devise_for :users
  get 'tours/:id/new', to: 'booking_tours#book_tour', as: 'book_tour_path'
  resources :tours  
  root to:'home_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
