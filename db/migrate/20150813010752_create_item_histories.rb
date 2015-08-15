class CreateItemHistories < ActiveRecord::Migration
  def change
    create_table :item_histories do |t|
        t.belongs_to :item
        t.belongs_to :user
        t.belongs_to :old_area
        t.belongs_to :new_area
        t.timestamps null: false
    end
  end
end
