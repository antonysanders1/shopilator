Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'website#index'
get "/login", to: "sessions#new"
post "/sessions", to: "sessions#create"
get "/logout", to: "sessions#destroy"
get 'about', to: 'static#about'
get 'services', to: 'static#services'
get 'contact', to: 'static#contact'
get '/auth/google_oauth2/callback' => 'sessions#omniauth'


resources :users, only: [:create, :new, :edit, :show] do
  resources :shopping_lists, only: [:index, :new, :create]
end

resources :shopping_lists, only: [:edit, :update, :show, :destroy] do
  resources :items
end

end
