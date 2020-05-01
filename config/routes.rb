Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'website#index'
get "/login", to: "sessions#new"
post "/sessions", to: "sessions#create"
get "/logout", to: "sessions#destroy"


resources :users, only: [:create, :new, :edit, :show, :update, :destroy] do
  resources :shopping_lists
end

end
