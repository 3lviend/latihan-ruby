class RepairsController < ApplicationController
	before_action :set_repair, only:[:show,:update,:edit,:destroy]
	def new
		@repair = Repair.new		
	end	

	def create
		@repair = Repair.new(repair_params)
		if @repair.save	
			flash[:notice] = "Successfully created..."
			redirect_to roles_path
		else
			flash[:error] = "Error!"
			render :new
		end
	end

	def update
		if @repair.update(repair_params)
			flash[:notice] = "Successfully updated..."
			redirect_to roles_path
		else
			flash[:error] = "Error!"
			render :edit
		end
	end

	def destroy
		@repair.destroy
		flash[:notice] = "Successfully Deleted.."
		redirect_to roles_path
	end

	def show		
	end

	def edit		
	end
	
	private
	def repair_params
		params.require(:repair).permit(:item_id,:staff_id,:status,:itemrepair_id,:payment_id, item_ids:[])
	end

	def set_repair
		@repair = Repair.find(params[:id])
	end
end
