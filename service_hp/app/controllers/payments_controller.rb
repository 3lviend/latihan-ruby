class PaymentsController < ApplicationController
	before_action :set_payment, only:[:show,:update,:edit,:destroy]
	
	def show;end
	def edit;end

	def new
		@payment = Payment.new
		@repair = Repair.find(params[:repair_id])
	end

	def create
		@payment = Payment.new(payment_params)
		@repair = @payment.repair
		if @payment.save
			flash[:notice] = "Successfully created..."
			redirect_to roles_path
		else
			render 'new'
		end
	end

	def update
		if @payment.update(payment_params)
			flash[:notice] = "Successfully Updated..."
			redirect_to roles_path
		else
			render 'edit'
		end
	end

	def destroy
		@payment.destroy
		flash[:notice] = "Successfully deleted..."
		redirect_to roles_path
	end

	private
	def payment_params
		params.require(:payment).permit(:repair_id,:staff_id,:total, repair_attributes:[:id,:status])		
	end

	def set_payment
		@payment = Payment.find(params[:id])
	end
end
