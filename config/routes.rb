Rails.application.routes.draw do
  resources :jerseys do
    resources :reviews, only: :create
  end
end
