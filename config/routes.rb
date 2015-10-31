Rails.application.routes.draw do
  root to: 'home#index'
  patch "/capture", to: 'pokemons#capture', as: "capture"
  patch "/damage", to: 'pokemons#damage', as: "damage"
  devise_for :trainers
  resources :trainers
  resources :pokemons
end
