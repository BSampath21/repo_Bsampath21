Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  get "/home" => "application#home", as: :rails_health_check
  get "/customer_support" => "application#customer_support"
  get "/500", to: "application#render_500" , via: :all
  get "/demo" => "application#demo"
  # Defines the root path route ("/")
  get "*path", to: "application#render_404", via: :all
  root "application#home"
end
