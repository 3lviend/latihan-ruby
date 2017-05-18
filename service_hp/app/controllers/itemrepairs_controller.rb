class ItemrepairsController < ApplicationController
	before_action :set_itemrepair, only:[:show,:edit,:update,:destroy]
	
	def new
		@itemrepair = Itemrepair.new
		@customer = Customer.find(params[:customer_id]) 
	end

	def show
		
	end
	def edit

	end

	def create
		@itemrepair = Itemrepair.new(itemrepair_params)
		if @itemrepair.save
			flash[:notice] = "Successfully created..."
			redirect_to roles_path(@customer)
		else
			flash[:error] = "Error created!"
			render :new
		end
	end

	def update
		if @itemrepair.update(itemrepair_params)
			flash[:notice] = "Successfully Updated..."
			redirect_to itemrepairs_path
		else
			flash[:error] = "Error!"
			render :edit
		end
	end

	def destroy
		@itemrepair.destroy
		flash[:notice] = "Successfully deleted..."
		redirect_to itemrepairs_path
	end

	private
	def itemrepair_params
		params.require(:itemrepair).permit(:brand,:type_hp,:imei,:damage,:description,:customer_id)
	end
	def set_itemrepair
		@itemrepair = Itemrepair.find(params[:id])
	end
end
