class PostsController < ApplicationController
	
	before_action :authenticate_user!, except: [:show,:index]
	before_action :set_post, except: [:index, :new, :create]

	#GET /articles
	def index	
		@posts= Post.all
	end
	#get /articles/:id
	def show
		@post.update_vists_count
		@comment = Comment.new
	end
	 #get /articles/new
	 def new
	 	@post = Post.new
	 end
	 #post /articles
	 def create
	 	@post = current_user.posts.new(post_params)
	 	if @post.save
	 		redirect_to @post
	 	else
	 		render :new
	 	end
	 end

	 def edit
	 end

	 def update
	 	if @post.update(post_params)
	 		redirect_to @post
	 	else
	 		render :edit
	 	end
	 end

	 def destroy
	 	@post.destroy
	 	redirect_to posts_path
	 end

	 private

	 def set_post
	 	@post = Post.find(params[:id])

	 end


	 def post_params
	 	params.require(:post).permit(:title,:lenguaje_origin,:translate,:body,:cover)
	 end

end