class Article < ActiveRecord::Base
  belongs_to :catagory
  validates_uniqueness_of :name, :catagory
end
