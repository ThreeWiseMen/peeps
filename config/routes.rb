Peeps::Application.routes.draw do
  devise_for :people
  resources :people
end
