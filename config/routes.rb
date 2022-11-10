# frozen_string_literal: false

Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
  resources :reviews, only: %i[show update edit destroy]
end
