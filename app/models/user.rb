class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :occupation, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

end
