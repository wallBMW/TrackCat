class ItemProperty < ActiveRecord::Base
  belongs_to :item, :foreign_key => "item_id"
  belongs_to :item_property_definition, :foreign_key => "item_property_definition_id"
end
