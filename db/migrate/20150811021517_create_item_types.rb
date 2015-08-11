class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps null: false
    end
  end
end
