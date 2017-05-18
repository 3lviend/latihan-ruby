class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  enum status:[:new_entry, :on_repair, :pending_part, :repair_complete, :finish, :cancel]
end
