class User < ActiveRecord::Base
  has_secure_password
  has_many :statuses, dependent: :destroy
  has_many :likes, dependent: :destroy 
  
  validates :name, presence: true
  validates :email, :presence => true, uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :password_confirmation, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end


