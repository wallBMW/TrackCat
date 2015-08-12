class CreateItemProperties < ActiveRecord::Migration
  def change
    create_table :item_properties do |t|
      t.belongs_to :item
      t.belongs_to :item_property_definition
      t.string :value
      t.timestamps null: false
    end
  end
end
