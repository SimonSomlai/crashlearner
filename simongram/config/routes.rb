# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root 'pics#index'
  resources :pics do
    member do
      put "like", to: "pics#upvote"
    end
  end
end
