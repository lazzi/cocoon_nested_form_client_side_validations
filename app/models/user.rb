class User < ActiveRecord::Base
  attr_accessible :name
  has_many :jobs

  validates_presence_of :name
end
