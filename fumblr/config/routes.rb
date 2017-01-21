Rails.application.routes.draw do

  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  get "/about" => "staticpages#about"

  root 'posts#index'
  resources :posts do
    resources :comments
  end
end
