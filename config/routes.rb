Rails.application.routes.draw do
  root "todolists#index"
  
  resources :todolists do
    resources :todoitems
  end
end
