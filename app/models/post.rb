class Post < ActiveRecord::Base
  attr_accessible :content, :title
  validates :title , :presence => true
  validates :content, :presence => true
  has_many :comments
end
