Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :fields, :only => :index
  post '/login', to: 'users#login'
  post '/auth', to: 'users#auth'
  post '/submit', to: 'forms#submit'
end
