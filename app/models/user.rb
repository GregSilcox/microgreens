class User < ApplicationRecord
  devise :confirmable, :database_authenticatable, :lockable, 
    :omniauthable, :registerable, :recoverable, :rememberable, 
    :timeoutable, :trackable, :validatable
end
