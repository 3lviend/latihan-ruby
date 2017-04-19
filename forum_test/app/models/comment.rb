class Comment < ApplicationRecord
	validates :isi, presence: true
end
