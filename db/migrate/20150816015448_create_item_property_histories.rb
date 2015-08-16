class CreateItemPropertyHistories < ActiveRecord::Migration
  def change
    create_table :item_property_histories do |t|
      t.belongs_to :item, null: false
      t.belongs_to :item_property_definition, null: false
      t.string :old_value
      t.string :new_value
      t.belongs_to :user, null: false
      t.timestamps null: false
    end
  end
end
