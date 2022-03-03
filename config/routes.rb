# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users
  resources :kudos
  devise_for :employees
  root to: 'kudos#index'

end
