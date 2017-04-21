class BukusController < ApplicationController
	before_action :set_buku, only:[:show, :edit, :update, :destroy]

	def index
		@buku = Buku.all
	end

	def show		
	end

	def new
		@buku = Buku.new
	end
	def create
		@buku = Buku.new(buku_params)
			if @buku.save
				flash[:notice] = "Successfully created.."
				redirect_to bukus_path
			else
			 	flash[:error] = "error!"
			 	render 'new'
			end 
	end

	def edit
	end

	def update
		if @buku.update(buku_params)
			flash[:notice] = "Successfully updated!"
			redirect_to bukus_path
		else
			flash[:notice] = "error"
			render 'edit'		
		end
	end
	
	def destroy
		@buku.destroy
		flash[:notice] = "Successfully delete..."
		redirect_to bukus_path			
	end	


	private
	  def buku_params
	    params.require(:buku).permit(:judul, :pengarang, :penerbit, :tahun, :harga)
	  end

	  def set_buku
	  	@buku = Buku.find(params[:id])
	  end

end
