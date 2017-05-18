class CustomersController < ApplicationController
	before_action :set_customer, only:[:show,:update,:destroy,:edit]

	def edit
		# @customer.itemrepair.build
	end
	
	def show
		@itemrepairs = @customer.itemrepairs
	end
	
	def new
		@customer = Customer.new
		@itemrepair = @customer.itemrepairs.build
		@itemrepair.build_repair
	end

	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			flash[:notice] = "Successfully created..."
			redirect_to roles_path
		else
			@itemrepair = @customer.itemrepairs.build
			# @itemrepair.build_repair
			flash[:error] = "Error!"
			render :new
		end
	end

	def update
		if @customer.update(customer_params)
			flash[:notice] = "Successfully Updated..."
			redirect_to roles_path
		else
			flash[:error] = "Error Updated!"
			render :edit
		end
	end

	def destroy
		@customer.destroy
		flash[:notice] = "Successfully Deleted..."
		redirect_to roles_path
	end

	def search
  		@customer = Customer.all
  		if params[:search]
  		  @customer = Customer.search(params[:search]).order("name")
  		else
    		@customer = Customer.all.order('name')
  		end
	end




	private
	def customer_params
		params.require(:customer).permit(:name,:address,:tlp,:staff_id,:payment_id,
		itemrepairs_attributes:[:id, :customer_id,:brand,:type_hp,:imei,:damage,:description] )
	end
	
	def set_customer
		@customer = Customer.find(params[:id])
	end
end
