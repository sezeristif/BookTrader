Rails.application.routes.draw do
  devise_for :users
  resources :books do
    resources :comments
    resources :trades do
      member do
        post 'accept_trade'
        post 'reject_trade'
      end
    end
  end

  resources :users do
      member do
        get 'trade_requests'
        post 'accept_trade'
      end



    resources :comments do
      member do
        post 'approve'
        post 'reject'
      end
    end
  end

  get 'books/:book_id/trades/:trade_id', to: 'trades#show'
  root 'pages#index'
  get 'search_results', to: 'books#search_results'
  
end
