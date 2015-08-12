class Area < ActiveRecord::Base
  has_many :item_types, through: :items
  has_many :items, :foreign_key => "area_id"
end
