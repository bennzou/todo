Rails.application.routes.draw do
  devise_for :users
  root to: 'blogs#index'
  resources :users, only: [:edit, :update]
  resources :blogs  # 追加した行
end
