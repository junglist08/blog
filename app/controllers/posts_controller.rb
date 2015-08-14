class PostsController < ApplicationController
	before_action :find_post, only: [:show,:edit,:update,:destroy]

	def new
	@post = Post.new
	end

	def create
		
		@post = Post.create(post_params)
		redirect_to root_path

	end

	def show
	end

	def edit
	end

	def destroy
		@post.destroy
		redirect_to root_path
	end

	def update
		@post.update(post_params)
		redirect_to post_path(@post)
	end

	private
	def post_params
		params.require(:post).permit(
			:title,
			:description,
			:seo_name,
			:post_body
			).merge(user_id: current_user.id)
	end

	def find_post
	@post = Post.find (params[:id])

	end

end
