Rails.application.routes.draw do
  root to: 'jerseys#index'
  resources :jerseys do
    resources :reviews
  end

  resources :jerseys do
    resources :bookings
  end
end
