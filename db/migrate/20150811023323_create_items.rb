class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_type_id
      t.integer :area_id
      t.belongs_to :area
      t.belongs_to :item_type
      t.timestamps null: false
    end
  end
end
