class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def show;end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
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
		if @user.update(user_params)
			flash[:notice] = "Successfully updated!"
			redirect_to topics_path
		else
			flash[:error] = "errors!"
			render 'edit'
		end
	end
	def destroy
		@user.destroy
		flash[:notice] = "Successfully delete!"
		redirect_to topics_path
	end

	def formlog;end

	def proses_login
		user = User.find_by(username: params[:user][:username])
		
		if user.blank?
			redirect_to new_user_path
		else
			if user.pass == params[:user][:pass]
				session[:user_id] = user.id
				redirect_to topics_path
			else
				redirect_to new_user_path
			end
		end
	end
	
	def logout
		# reset_session
		session[:user_id] = nil
		redirect_to topics_path
	end



	private
	  def user_params
	    params.require(:user).permit(:name, :username, :pass)
	  end

	  def set_user
	  	@user = User.find(params[:id])
	  end

end
