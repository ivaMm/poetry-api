Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :authors, only: [ :index, :show ]
      resources :poems, only: [ :index, :show ]
    end
  end
end
