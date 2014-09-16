class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :name
      t.integer :edition
      t.string :svg_element

      t.timestamps
    end
  end
end
