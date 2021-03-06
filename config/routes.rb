# frozen_string_literal: true

Rails.application.routes.draw do
  get 'ui/index'
  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get 'dashboard', to: 'dashboard#show'
  resources :form_examples
end
