class User < ApplicationRecord
  devise :confirmable, :database_authenticatable, :lockable,
    :omniauthable, :registerable, :recoverable, :rememberable,
    :timeoutable, :trackable, :validatable

  validates :email, presence: true

  has_many :orders
  has_many :donations

  has_many :roles
  has_many :groups, through: :roles
end
