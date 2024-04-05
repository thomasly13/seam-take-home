Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :api, defaults: {format: :json} do

    resources :posts, only: [:index, :show, :create, :destroy, :update]

    resources :posts do 
      resources :comments, only: [:index, :create]
    end

  end


  get '*path', to: "static_pages#frontend_index"
end
