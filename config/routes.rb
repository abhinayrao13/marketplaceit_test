Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
  devise_for :users
  resources :events
  resources :meetings do
    member do
      get "enroll"
    end
  end
  get "/requests/:id" => "requests#approval"
end
