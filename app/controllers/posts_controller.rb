class PostsController < ApplicationController
	before_action :authenticate_admin!, except: [:show,:index]
	def index
		@posts = Post.all
	end

	def get
		@post = Post.find(params[:id])
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_admin.posts.new(post_params)
		if @post.save
		redirect_to root_path
	else
		render :new
			end

	end

		#DESTROY
	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to root_path

	end


	#PUT /post
	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to root_path
		else
			render :edit
		end 
		
	end

	#EDIT 
	def edit
		@post = Post.find(params[:id])
	end

	private

	def post_params
		params.require(:post).permit(:titulo,:descripcion,:portada)
	end

end