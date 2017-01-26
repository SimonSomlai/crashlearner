Rails.application.routes.draw do
  # patch 'change-status' => 'tasks#change_status'
  devise_for :user, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :tasks do
    patch :change_status
  end

  authenticated :user do
    root 'tasks#index', as: :authenticated_root
  end

  root'tasks#welcome_page'
end
