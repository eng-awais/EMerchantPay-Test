# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users

  resources :merchants, only: %i[index show edit update destroy] do
    resources :transactions , only: %i[index]
  end

end
