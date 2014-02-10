MentOrShip::Application.routes.draw do
  resources :people
  resources :businesses
  resource :session, only: %w(new create destroy)
  resources :memberships
  root 'businesses#index'
end
