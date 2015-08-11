class CreateItemPropertyDefinitions < ActiveRecord::Migration
  def change
    create_table :item_property_definitions do |t|
      t.string :name, null: false
      t.belongs_to :item_type
      t.timestamps null: false
    end
  end
end
