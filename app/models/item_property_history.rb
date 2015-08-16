class ItemPropertyHistory < ActiveRecord::Base
  belongs_to :item, :foreign_key => "item_id"
  belongs_to :item_property_definition, :foreign_key => "item_property_definition_id"
  belongs_to :user, :foreign_key => "user_id"

  validates :item, presence: true
  validates :item_property_definition, presence: true
  validates :user, presence: true
  validates :new_value, presence: true
end
