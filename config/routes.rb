Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
 resource:registration
 resource:session
 resource:password_reset
 resource:password

  # Defines the root path route ("/")
  root "main#home"
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"
  # session route
  
  get "log_in", to: "session#new"
  post "log_in", to: "session#create"
  delete "logout", to: "session#destroy"
end
