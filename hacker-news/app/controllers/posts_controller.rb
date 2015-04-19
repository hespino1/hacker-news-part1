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

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params) 
		@post.save
    response = @post
    p response
    respond_to do |format|
      format.json { render json: response}
      format.html
    end 
  end

  def destroy
    @post = Post.find((params[:id]))
    @post.destroy
    redirect_to root_path
  end

  def form
    @post = Post.new
    render partial: "form"
  end


  private
    def post_params
      params.require(:post).permit(:title)
    end


end
