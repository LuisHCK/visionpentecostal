class ProgramsController < ApplicationController
#GET /program
	
	before_action :authenticate_admin!, except: [:show,:index]
	def index
		 @programs = Program.all
		 @posts = Post.all
	end 
	
	#GET program/id
	def show
		@program = Program.find(params[:id])
	end

	#GET /program/new
	def new
		@program = Program.new
	end

	#POST /program
	def create
		@program = Program.new(program_params)
		if @program.save
		redirect_to @program
	else
		render :new
			end

	end

	#DESTROY
	def destroy
		@program = Program.find(params[:id])
		@program.destroy

		redirect_to programs_path

	end


	#PUT /program
	def update
		@program = Program.find(params[:id])
		if @program.update(program_params)
			redirect_to @program
		else
			render :edit
		end 
		
	end

	#EDIT 
	def edit
		@program = Program.find(params[:id])
	end

	private
	def program_params
		params.require(:program).permit(:titulo,:descripcion,:dias,:hora,:cover)
	end




end