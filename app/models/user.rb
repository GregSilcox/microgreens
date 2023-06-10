class User < ApplicationRecord
  devise :confirmable, :database_authenticatable, :lockable, 
    :omniauthable, :registerable, :recoverable, :rememberable, 
    :timeoutable, :trackable, :validatable

  validates :email, presence: true

  has_many :orders
end
