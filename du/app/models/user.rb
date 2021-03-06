class User < ApplicationRecord
  has_many :comments
  validates :username,uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :validatable, password_length: 4..4

        # deviseでemailを不必要にする
 def email_required?
  false
end
def email_changed?
  false
end
end
