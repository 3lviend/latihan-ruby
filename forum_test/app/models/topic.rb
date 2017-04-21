class Topic < ApplicationRecord
	validates :title, presence: true # Validasi isi data.

	belongs_to :user

	def show_username(user_id)
		User.find(user_id).username
	end
end
