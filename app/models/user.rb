class User < ActiveRecord::Base
  validates :username, uniqueness: true
  belongs_to :lease
  has_many :submittedreports, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'
  has_and_belongs_to_many :roles
  acts_as_authentic
  
  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym}
  end

end
