class ItemType < ActiveRecord::Base
  has_many :item_property_definitions, :foreign_key => "item_type_id"
  has_many :items, :foreign_key => "item_type_id"

  validates :name, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :description, length: { maximum: 255 }
end
