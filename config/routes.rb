Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  get 'pages/home'
  root "pages#home"

  get 'pages/about'
  #root 'pages#about'



# namespace :admin do
#   resources :pages
# end

end
