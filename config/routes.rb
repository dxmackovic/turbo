Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users
  resources :quotes

  resources :quotes do
    resources :line_item_dates, expect: [:index, :show] do
      resources :line_items, except: [:index, :show]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
