Rails.application.routes.draw do
  resources :projects do
    resources :tasks, only: [:create, :update, :destroy]
  end
end
