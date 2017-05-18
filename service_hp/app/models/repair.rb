class Repair < ApplicationRecord
	belongs_to :staff, optional: :true
	belongs_to :itemrepair, inverse_of: :repair
	has_one :customer, dependent: :destroy, :through => :itemrepair
	has_many :payments, dependent: :destroy
	has_and_belongs_to_many :items, dependent: :destroy

	accepts_nested_attributes_for :items

	# def item_name(item_id)
	# 	Item.find(item_id).name
	# end

	def totalitem
		total = 0
		@items = self.items
		@items.each do |totalitem|
			total += totalitem.item_price
		end
		return total
	end

	def self.paymentrepairs(item_ids)
		total = 0
		item_ids.each do |itemid|
		a = self.find(itemid)
		total += a.totalitem 
		end
		return total
	end
end