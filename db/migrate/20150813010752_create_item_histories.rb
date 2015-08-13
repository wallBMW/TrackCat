class CreateItemHistories < ActiveRecord::Migration
  def change
    create_table :item_histories do |t|
        t.belongs_to :item
        t.integer :item_id
        t.belongs_to :item_type
        t.integer :item_type_id
        t.belongs_to :user
        t.integer :user_id
        t.belongs_to :old_area
        t.integer :old_area_id
        t.belongs_to :new_area
        t.integer :new_area_id
        t.timestamps null: false
    end
  end
end
