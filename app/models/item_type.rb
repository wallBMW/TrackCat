class ItemType < ActiveRecord::Base
  has_many :item_property_definitions, :foreign_key => "item_type_id"
  has_many :items, :foreign_key => "item_type_id"
  validates :name, uniqueness: true
end
