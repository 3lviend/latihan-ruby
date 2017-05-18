class Itemrepair < ApplicationRecord
	validates :customer_id, presence: false
	belongs_to :customer, optional: true
	has_one :repair, dependent: :destroy, inverse_of: :itemrepair
	after_create :create_repair
	accepts_nested_attributes_for :repair
	
	def create_repair
		repair = self.build_repair
		repair.staff = self.customer.staff
		repair.status = :new_entry
		repair.save
	end
end
