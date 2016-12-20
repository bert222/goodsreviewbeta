Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :goods do
    resources :reviews
  end
  root 'goods#index'
end
