Rails.application.routes.draw do
  resources :jerseys do
    resources :reviews
  end
end
