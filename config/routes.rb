Rails.application.routes.draw do
  get 'discounts/new'
  get 'discounts/create'
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index]
    end
  end
  resources :products, only: [:index] do
    resources :discounts, only: [:new, :create]
  end
  
  resources :discounts, only: [:new, :create]
  resources :discount_campaigns, only: [:index, :show, :edit, :update]
  resources :discount_histories

  root 'discount_campaigns#index'
end
