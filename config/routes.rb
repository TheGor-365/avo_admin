Rails.application.routes.draw do
  root "posts#index"
  devise_for :users
  
  resources :posts

  constraints -> (request) { request.env["warden"].user&.admin? } do
    mount Avo::Engine, at: Avo.configuration.root_path
  end
end
