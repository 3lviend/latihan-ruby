class Payment < ApplicationRecord
	belongs_to :repair
	belongs_to :staff

	scope :itemtotal, -> {where("total >= ?", 100000)}  

	accepts_nested_attributes_for :repair
	
	def totalpayment(payment_id)
		Payment.find(payment_id).total
	end
end
