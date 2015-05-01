class User < ActiveRecord::Base
  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: { maximum: 255 }, \
            format: \
            { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/,  \
              message: "allows valid email address only"},  \
            uniqueness: {case_sensitive: false}
end
