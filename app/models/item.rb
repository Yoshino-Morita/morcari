class Item < ActiveRecord::Base

  has_many :categories
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images
  has_one :area
  has_one :brand
  belongs_to :user

end
