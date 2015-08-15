class ItemPropertyDefinition < ActiveRecord::Base
  belongs_to :item_type, :foreign_key => "item_type_id"

  validates :name, uniqueness: { scope: :item_type_id }, length: { minimum: 2, maximum: 50 }
  validates :item_type, presence: true
end
