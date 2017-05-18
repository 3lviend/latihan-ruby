class ItemsController < ApplicationController
	before_action :set_item, only:[:show,:update,:edit,:destroy]

	def show		
	end

	def edit		
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		if @item.save
		   flash[:notice] = "Successfully created..."
		   redirect_to roles_path
		else
			flash[:error] = "Error"
			render action: :new
		end
	end

	def update
		if @item.update(item_params)
			flash[:notice] = "Successfully Updated..."
			redirect_to roles_path
		else
			render :edit
		end
	end

	def destroy
		@item.destroy
		flash[:notice] = "Successfully Deleted..."
		redirect_to roles_path
	end


	private
	def item_params
		params[:item][:item_price].to_i
		params.require(:item).permit(:name,:category,:item_price)
	end
	def set_item
		@item = Item.find(params[:id])
	end
end
