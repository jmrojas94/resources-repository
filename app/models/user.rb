class User < ApplicationRecord
  has_many :posts
  has_many :favorites
  has_many :favorite_posts, through: :favorites, source: :post
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
