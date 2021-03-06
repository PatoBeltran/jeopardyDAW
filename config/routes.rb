Rails.application.routes.draw do
  get 'reports/show'

  root "pages#landing"

  devise_for :users, controllers: { registrations: "users"}

  devise_scope :user do
    resources :users do
      resources :games do
        member do
          get 'add_players', to: "games#add_players"
          post 'added_player', to: "games#added_player"
          get 'play', to: "games#play_game"
          post 'finish', to: "games#end_game"
          get 'teams' => "games#teams", format: 'json'
          put 'next_turn', to: "games#next_turn"
          get 'add_answer', to: "games#add_answer"
        end
      end
      collection do
        get 'change_password', to: "users#change_password"
        post 'password_changed', to: "users#password_changed"
      end
    end
  end

  resources :categories
  resources :clues
  resources :semesters
  resources :topics
  resources :reports

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
