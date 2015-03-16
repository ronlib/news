class Catagory < ActiveRecord::Base
  has_many :articles, inverse_of: :catagory
end
