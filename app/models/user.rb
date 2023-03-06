class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 20 }
  def current_user_posts
    self.posts
  end
end
