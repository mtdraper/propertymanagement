class User < ActiveRecord::Base
  validates :username, uniqueness: true
  belongs_to :lease
  has_many :submittedreports, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'
  acts_as_authentic
end
