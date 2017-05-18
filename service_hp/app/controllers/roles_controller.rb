class RolesController < ApplicationController
	# before_filter :verify_authenticity_token
	before_action :set_role, only: [:show, :edit, :update, :destroy]
	def index
		@item = Item.all
		@role = Role.all
		@staff = Staff.all
		@payment = Payment.all
		@customer = Customer.all
		@itemrepair = Itemrepair.all

		if current_staff.role.name == "Teknisi"
			repairs = Repair.all
			@repair = repairs.new_entry + repairs.on_repair + repairs.pending_part
		else
			@repair = Repair.all
		end
	
	end

	def show;end

	def new
		@role = Role.new
	end

	def create
		@role = Role.new(role_params)
		if @role.save
			flash[:notice] = "Successfully created!"
			redirect_to roles_path
		else
			flash[:error] = "Error created!"
			render :new
		end
	end

	def edit;end

	def update
		if @role.update(role_params)
			flash[:notice] = "Successfully updated!"
			redirect_to roles_path
		else
			flash[:error] = "Error Updated!"
			render :edit
		end
	end

	def destroy
		@role.destroy
		flash[:notice] = "Successfully Deleted!"
		redirect_to roles_path
	end

	private
	def role_params
		params.require(:role).permit(:name)
	end

	def set_role
		@role = Role.find(params[:id])
	end
end
