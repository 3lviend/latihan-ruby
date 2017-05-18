class Role < ApplicationRecord
	validates :name, presence: true
	has_many :staffs, dependent: :destroy

	# def self.role_name(role_id)
	# 	Role.find(role_id).name
	# end

end
