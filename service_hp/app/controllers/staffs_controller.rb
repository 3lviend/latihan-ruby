class StaffsController < ApplicationController
	# before_filter :verify_authenticity_token
	before_action :set_staff, only:[:show,:edit,:destroy,:update]
	
	def new
		@staff = Staff.new
	end

	def edit;end

	def show
		
	end

	def create
		@staff = Staff.new(staff_params)
		if @staff.save
		   flash[:notice] = "Successfully created..."
		   redirect_to roles_path
		else
		   flash[:error] = "Error!"
		   render :new
		end
	end

	def update
		if @staff.update(staff_params)
		   flash[:notice] = "Successfully Updated..."
		   redirect_to roles_path
		else
			flash[:error] = "Error"
			render 'edit'
		end
	end

	def destroy
		@staff.destroy
		flash[:notice] = "Successfully Deleted..."
		redirect_to roles_path
	end

	def staff_login
		# staff = Staff.find_by("username = '#{params[:staff][:username]}' or name= ?", params[:staff][:username])
		staff = Staff.find_by(username: params[:staff][:username])
		if staff.blank?
		   redirect_to root_path, notice: "Invalid Username Or Password"
		else
			if staff.password == Digest::MD5.hexdigest(params[:staff][:password])
				session[:staff_id] = staff.id
			   redirect_to roles_path, notice: "Successfully Login"
			else
				redirect_to root_path, notice: "Invalid Username Or Password"
			end
		end
	end

	def logout
		session[:staff_id] = nil
		redirect_to root_path, notice: "You're Logout!"
	end

	private
	
	def staff_params
	 params.require(:staff).permit(:name,:username,:password,:role_id)	
	end

	def set_staff
		@staff = Staff.find(params[:id])
	end
end
