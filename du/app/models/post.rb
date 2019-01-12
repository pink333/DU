class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  
  def self.search(search)
    if search
      Post.where(['name LIKE ?   or  teach LIKE ?', "%#{search}%", "%#{search}%"]) 
    else
      Post.all
   end
  end
end
