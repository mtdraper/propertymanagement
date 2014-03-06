class Lease < ActiveRecord::Base
  validates :start_date, :end_date, presence: true
  belongs_to :unit
  has_many :renters, :class_name => 'User'
end
