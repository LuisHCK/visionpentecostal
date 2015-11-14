class WelcomeController < ProgramsController
	def index
		@posts = Post.all
		@programs = Program.all
	end

	def get
		@post = Post.find(params[:id])
	end

		def create
		@posts = Post.new(post_params)
		if @post.save
		redirect_to @post
	else
		render :new
			end

	end

		#DESTROY
	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path

	end


	#PUT /post
	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to @post
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
