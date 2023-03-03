Rails.application.routes.draw do
  root "posts#index"
  resources :posts
  mount Avo::Engine, at: Avo.configuration.root_path
end
