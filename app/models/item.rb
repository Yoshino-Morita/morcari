class Item < ActiveRecord::Base

  has_many :categories
  has_one :area
  has_one :brand
  belongs_to :user

end
