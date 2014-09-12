class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :name
      t.string :colors
      t.integer :edition

      t.timestamps
    end
  end
end
