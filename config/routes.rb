Peeps::Application.routes.draw do
  devise_for :people
  resources :people
  root to: "people#index"

  get '/endorse/:person_id/skill/:skill_id' => 'endorses#new', as: :new_endorse
  post '/endorse' => 'endorses#create', as: :endorses
end
