class Job < ActiveRecord::Base
  attr_accessible :description, :user_id, :user_attributes
  belongs_to :user
  accepts_nested_attributes_for :user, :reject_if => :all_blank

  validates_presence_of :description
  validates_presence_of :user unless :user_attributes
end
