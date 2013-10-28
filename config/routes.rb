Peeps::Application.routes.draw do
  devise_for :people
  resources :people
  resources :endorses, only: [:new, :create]
end
