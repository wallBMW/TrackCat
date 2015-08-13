class Area < ActiveRecord::Base
  has_many :item_types, through: :items
  has_many :items, :foreign_key => "area_id"

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 255 }
  validates :description, length: { maximum: 255 }
end
