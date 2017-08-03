class Item < ActiveRecord::Base

  has_many :categories
  has_one :area
  belongs_to :user

end
