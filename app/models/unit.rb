class Unit < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :property
  has_many :leases
end
