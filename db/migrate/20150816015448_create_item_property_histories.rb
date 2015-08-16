class CreateItemPropertyHistories < ActiveRecord::Migration
  def change
    create_table :item_property_histories do |t|

      t.timestamps null: false
    end
  end
end
