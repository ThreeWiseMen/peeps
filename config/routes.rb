Peeps::Application.routes.draw do
#  devise_for :people
  resources :people
  root to: "people#index"
end
