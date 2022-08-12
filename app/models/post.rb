class Post < ApplicationRecord
    belongs_to :author, class_name: 'User'
    validates_presence_of :title, :content
    has_many :post_categories, dependent: :destroy
    has_many :categories, through: :post_categories
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
end
