class Post < ApplicationRecord
    has_many :comments, dependent: :destroy # if i destroy the post also destroy the comment
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :body, presence: true 
end
