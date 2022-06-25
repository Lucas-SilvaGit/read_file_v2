Rails.application.routes.draw do
  get 'person/index'
  get 'person/new'
  get 'person/create'
  get 'person/show'
  get 'person/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "person#index"
end
