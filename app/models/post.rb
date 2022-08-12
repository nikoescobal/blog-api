class Post < ApplicationRecord
    belongs_to :author, class_name: 'User'
    validates_presence_of :title, :content
    has_many :article_categories, dependent: :destroy
    has_many :categories, through: :article_categories
    has_many :votes, dependent: :destroy
end
