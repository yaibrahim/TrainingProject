class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products
  has_one :cart
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Cart.user_id = current_user.id

end
