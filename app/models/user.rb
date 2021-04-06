class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :email, presence: true, uniqueness: { case_sensistive: false }
  validates :password_confirmation, presence: true

  def name 
    return first_name
  end
end 

