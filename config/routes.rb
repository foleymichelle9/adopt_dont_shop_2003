Rails.application.routes.draw do
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/shelters', to: "shelters#index"
  get '/shelters/new', to: "shelters#new"
  get '/shelters/:shelter_id', to: "shelters#show"
  post '/shelters', to: "shelters#create"
  get '/shelters/:shelter_id/edit', to: "shelters#edit"
  patch '/shelters/:shelter_id', to: "shelters#update"

end
