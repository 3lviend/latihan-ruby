class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :showBaru, :update, :destroy]
	
	def show
		#Lewat Show

	end

	def showBaru
		#Lewat Show Baru
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			flash[:notice] = "Successfully created!"
			redirect_to topics_path
		else
			flash[:error] = "error!"
			render :new
		end
	end

	def edit
	end
	def update
		if @comment.update(comment_params)
			flash[:notice] = "Successfully updated!"
			redirect_to topics_path
		else
			flash[:error] = "errors!"
			render 'edit'
		end
	end
	def destroy
		@comment.destroy
		flash[:notice] = "Successfully delete!"
		redirect_to topics_path
	end
	private
	  def comment_params
	    params.require(:comment).permit(:isi, :like, :dislike)
	  end

	  def set_comment
	  	@comment = Comment.find(params[:id])
	  end

	  def like
	  	curent_like = @comment.like.blank? ? 0 : @comment.like
	  	@comment.update(like: curent_like + 1 )
	  end
end

