class ItemPropertyHistory < ActiveRecord::Base
  belongs_to :item, :foreign_key => "item_id"
  belongs_to :item_property_definition, :foreign_key => "item_property_definition_id"
  belongs_to :user, :foreign_key => "user_id"

  validates :item, presence: true
  validates :item_property_definition, presence: true
  validates :user, presence: true
  validates :new_value, presence: true

  def record(actor, item_prop, new_val)
    self.user = actor
    self.item = item_prop.item
    self.item_property_definition = item_prop.item_property_definition
    self.new_value = new_val

    self.save
  end
end
