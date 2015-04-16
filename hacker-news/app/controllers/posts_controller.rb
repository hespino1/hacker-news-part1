class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	@counter = 0
  end

  def upvote
  	@vote = Vote.new(post_id: params[:post_id])
  	@vote.save
  	redirect_to root_path


  	
  end
end
