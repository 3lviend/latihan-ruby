class TopicsController < ApplicationController
	before_action :set_topic, only: [:show, :edit, :update, :destroy]

	# get all data from table topic		
	def index
		@comment = Comment.all
		@topic = Topic.all


	end

	# show 1 data
	def show
		current_view = @topic.total_view.blank? ? 0 : @topic.total_view
		@topic.update(total_view: current_view + 1)
# ================
		# current_view = 0
		# if @topic.total_view.blank?
		# 	current_view + 1
		# else
		# 	current_view = @topic.total_view + 1
		# end
# ===============
		# current_view = if @topic.total_view.blank?
		# 	1
		# else
		# 	@topic.total_view + 1
		# end

		# @topic.update(total_view: current_view)
	end

	#new topic 
	def new
		@topic = Topic.new
	end

	# create new topic to database
	def create
		@topic = Topic.new(topic_params)

		if @topic.save
			flash[:notice] = "Successfully created..."
			redirect_to topics_path
		else
			flash[:error] = "errors ..........."
			render :new
		end
	end

	# get data who want to edit/ harus ada object yg mau di rubah
	def edit;end

	# update data and save to database/ di update data yg di rubah
	def update
		if @topic.update(topic_params)
			flash[:notice] = "Successfully updated..."
			redirect_to topics_path
		else
			flash[:error] = "errors ..........."
			render 'edit'
		end
	end

	# delete data
	def destroy
		@topic.destroy
		# @topic.delete
		flash[:notice] = "Successfully delete..."
		redirect_to topics_path
	end
	
	private
	  def topic_params
	    params.require(:topic).permit(:title, :description, :published_at)
	  end

	  def set_topic
	  	@topic = Topic.find(params[:id])
	  end

end
