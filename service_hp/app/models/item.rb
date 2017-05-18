class Item < ApplicationRecord
	has_and_belongs_to_many :repairs, dependent: :destroy

	# def self.itemname(item_id)
	# 	Item.find(item_id).name
	# end
end
