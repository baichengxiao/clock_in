class User < ApplicationRecord
  has_many :timesheets


  has_secure_password

  validates :username, presence:true, length: {in: 8..20}, uniqueness:true
  validates :email, presence:true
  validates :password_digest, presence:true
  validates :role, presence:true, inclusion: {in: ['user','admin','manager']}

end
