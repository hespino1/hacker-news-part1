Rails.application.routes.draw do
  # get 'posts/index'

  resources :posts, only:[:index, :new, :create, :destroy] 
  root 'posts#index'
  get 'posts/upvote'
  get 'posts/form'

end
