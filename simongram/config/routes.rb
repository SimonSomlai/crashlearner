Rails.application.routes.draw do
root "pics#index"
  resources :pics

end
