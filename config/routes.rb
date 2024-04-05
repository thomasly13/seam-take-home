Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  resources :posts, only: [:index, :show, :create, :destroy, :update], defaults: {format: :json}

  resources :posts do 
    resources :comments, only: [:index, :create], defaults: {format: :json}
  end



  get '*path', to: "static_pages#frontend_index"
end
