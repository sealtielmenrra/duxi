class PostsController < ApplicationController
	#GET /articles
	def index	
		@posts= Post.all
	end
	#get /articles/:id
	def show
		@post = Post.find(params[:id])
	end
	 #get /articles/new
	 def new
	 	@post = Post.new
	 end
	 #post /articles
	 def create
	 	@posts = Post.new(post_params)
	 	if @posts.save
	 		redirect_to @posts
	 	else
	 		render :new
	 	end
	 end
	 def edit
	 	@post = Post.find(params[:id])
	 end

	 def update
	 	@post= Post.find(params[:id])
	 	if @post.update(post_params)
	 		redirect_to @post
	 	else
	 		render :edit
	 	end
	 end

	 def destroy
	 	@post = Post.find(params[:id])
	 	@post.destroy
	 	redirect_to posts_path
	 end

	 private
	 def post_params
	 	params.require(:post).permit(:title,:lenguaje_origin,:translate,:body)
	 end

end