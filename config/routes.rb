Rails.application.routes.draw do
  root to: 'jerseys#index'
  resources :jerseys do
    resources :reviews
  end

  resources :jerseys do
    resources :bookings
  end

  resources :jerseys do
    resources :jersey_categories, only: [:new, :create, :show]
  end
end
