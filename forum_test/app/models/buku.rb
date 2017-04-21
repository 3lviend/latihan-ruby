class Buku < ApplicationRecord
	validates :judul, presence: true
end
