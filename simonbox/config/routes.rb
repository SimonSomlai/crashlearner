Rails.application.routes.draw do
  resources :docs
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  authenticated :user do
    root 'docs#index', as: :authenticated_root
  end
  root "staticpages#index"

end
