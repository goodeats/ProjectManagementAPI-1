Rails.application.routes.draw do

  resources :groups, only: [:index, :create, :show, :update, :destroy] do
    resources :users, only: [:index, :create, :destroy]

    resources :projects, only: [:index, :create, :show, :update, :destroy] do
      resources :tasks, only: [:index, :create, :show, :update, :destroy] do
        resources :comments, only: [:index, :create, :destroy]
      end
    end
  end

  resources :users, only: [:show, :update]

  root 'home#index'

end
