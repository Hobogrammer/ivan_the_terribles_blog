IvanTheTerriblesBlog::Application.routes.draw do

  resources :posts
  resources :comments
  resources :replies

  get '/comments/show_partial/:id', to: 'comments#show_partial', as: :comment_partial
  get '/replies/show_partial/:id', to: 'replies#show_partial', as: :reply_partial

  root :to => 'posts#index'
end

