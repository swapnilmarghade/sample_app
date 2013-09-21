# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email,:password, :password_confirmation
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

 
  has_secure_password
  before_save {|user| user.email = email.downcase}

  validates :password, presence: true, length: { minimum: 6 }
  validates_confirmation_of :password
  validates :password_confirmation, presence: true


end
