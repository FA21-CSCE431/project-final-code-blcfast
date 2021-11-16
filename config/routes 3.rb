# frozen_string_literal: true

Rails.application.routes.draw do

  
  get 'expense_types/new'
  get 'expense_types/create'
  get 'expense_types/index'
  get 'expense_types/show'
  get 'expense_types/edit'
  get 'expense_types/update'
  get 'expense_types/delete'
  get 'expense_types/destroy'
  get 'users/edit'
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  resources :members
  resources :receipts
  resources :expense_types

  root 'receipts#new'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end
end
