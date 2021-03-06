Rails.application.routes.draw do

  resources :sports do
    resources :leagues
    member do
      get :leaderboard
    end
  end

  resources :leagues do
    resources :matches
  end

  resources :predictions

  resources :tweets

  get 'shop/index'

  # get 'tweets/index'

  get 'wall/index'


  devise_for :users

  # get 'match/index'

  get 'pages/soccer/woso_writers' => 'high_voltage/pages#show', id: 'woso_writers'


  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
