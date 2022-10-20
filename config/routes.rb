Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    resources :restaurants, only: %i[create index new show] do
      resources :reviews, only: %i[create]
    end
  end
end
