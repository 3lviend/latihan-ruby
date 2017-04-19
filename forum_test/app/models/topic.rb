class Topic < ApplicationRecord
	validates :title, presence: true # Validasi isi data.
end
