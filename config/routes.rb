# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  devise_for :people

  namespace :admin do
    resources :permissions
    resources :people
  end
end
