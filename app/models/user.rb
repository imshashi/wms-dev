class User < ActiveRecord::Base
  validates :email, :presence => true
  validates :mobile, :presence => true, :uniqueness => true
end
