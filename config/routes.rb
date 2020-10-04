Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :transactions
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace 'api' do
    get 'user/:id/transactions' , to: "user#transactions", as:  'user_transactions'
    post 'user/create', to: "user#create", as:  'user_create'
  end

  root 'transactions#index'
end
