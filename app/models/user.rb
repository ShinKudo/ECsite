class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders
  has_many :users,through: :orders

  devise :database_authenticatable, :registerable,
         :trackable, :validatable

end
