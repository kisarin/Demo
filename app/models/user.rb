class User < ActiveRecord::Base
  validates :name,     :presence => true
  validates :password, :presence => true
  validates :login,    :presence => true, :uniqueness => true
  validates :email,    :presence => true, :uniqueness => true

  has_many :posts, dependent => :destroy
end
