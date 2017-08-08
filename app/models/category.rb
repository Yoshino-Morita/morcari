class Category < ActiveRecord::Base

  belongs_to :item
  belongs_to :brand

end
