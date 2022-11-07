class UserAll < ApplicationRecord
  validates :name, :last_name, :address, :contact_no, :city, :state, presence: true
end
