class Property < ActiveRecord::Base
  validates :name, :address, :city, :state, :zip, presence: true
  has_many :units
end
