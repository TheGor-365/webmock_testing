Rails.application.routes.draw do
  root "welcome#homepage"
  resources :books

  namespace :api do
    namespace :v1 do
      resources :books, only: :index
    end
    namespace :v2 do
      resources :books, only: :index
    end
  end
end
