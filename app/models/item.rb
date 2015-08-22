class Item < ActiveRecord::Base
  belongs_to :area, :foreign_key => "area_id"
  belongs_to :item_type, :foreign_key => "item_type_id"
  has_many :item_properties, :foreign_key => "item_id"
  has_many :item_histories, :foreign_key => "item_id"
  has_many :item_property_histories, :foreign_key => "item_id"
  has_many :item_property_definitions, through: :item_type

  validates :area, presence: true
  validates :item_type, presence: true
end
