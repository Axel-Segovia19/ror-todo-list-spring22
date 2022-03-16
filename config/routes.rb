Rails.application.routes.draw do
  
  namespace :api do
    resources :lists do
      resources :todos
    end

    resources :todos, execept: [:index, :show, :update, :create, :destroy] do
      resources :notes 
    end
  end

end