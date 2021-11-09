Rails.application.routes.draw do
  get 'expense_type/new'
  get 'expense_type/create'
  get 'expense_type/index'
  get 'expense_type/show'
  get 'expense_type/edit'
  get 'expense_type/update'
  get 'expense_type/delete'
  get 'expense_type/destroy'
  get 'users/edit'
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  resources :receipts

  root 'receipts#index'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
end
