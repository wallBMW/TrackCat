class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name, null: false
      t.string :description
      t.string :location
      t.timestamps null: false
    end
  end
end
