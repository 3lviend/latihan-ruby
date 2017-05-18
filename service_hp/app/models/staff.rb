class Staff < ApplicationRecord
	validates :username, presence: true
	validates :password, length: { minimum: 6, maximum: 20 }, on: :create
	belongs_to :role
	has_many :customers, dependent: :destroy
	has_many :repairs, dependent: :destroy
	has_many :payments, dependent: :destroy
	before_save :password_encrypt
	
	# def self.staff_name(staff_id)
	# 	Staff.find(staff_id).name
	# end

	def password_encrypt
		self.password = Digest::MD5.hexdigest(self.password)
	end
end
