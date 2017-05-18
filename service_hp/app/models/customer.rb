class Customer < ApplicationRecord
	validates :name, presence: true
	belongs_to :staff
	has_many :itemrepairs, dependent: :destroy

	accepts_nested_attributes_for :itemrepairs


	def self.search(search)
  		where("name LIKE ?", "%#{search}%") 
	end
end
