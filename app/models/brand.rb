class Brand < ActiveRecord::Base
  belongs_to :item
  has_one :category
end
