class Area < ActiveRecord::Base
  has_many :item_types, through: :items
end
