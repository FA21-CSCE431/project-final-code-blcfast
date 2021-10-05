Rails.application.routes.draw do
  get 'users/edit'
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  resources :receipts

  root 'receipts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
