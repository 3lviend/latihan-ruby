class User < ApplicationRecord
	validates :name, presence: true

	has_many :topics

	# def self.show_username(user_id)
	# 	User.find(user_id).username
	# end
end
