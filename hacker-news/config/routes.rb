Rails.application.routes.draw do
  get 'posts/index'
  root 'posts#index'

  get 'posts/upvote'

end
