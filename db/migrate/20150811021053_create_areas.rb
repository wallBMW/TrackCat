class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.integer :id
      t.string :name, null: false, limit: 255
      t.string :description, limit: 255
      t.string :location
      t.timestamps, null: false
    end
  end
end
