Rails.application.routes.draw do
  root "welcome#homepage"
  resources :books

  namespace :api do
    namespace :v1 do
      resources :books, only: :index
      get 'names/fetch', to: 'names#fetch', as: :fetch_name
    end
    namespace :v2 do
      resources :books, only: :index
    end
  end
end
