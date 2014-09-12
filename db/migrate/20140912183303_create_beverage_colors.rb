class CreateBeverageColors < ActiveRecord::Migration
  def change
    create_table :beverage_colors do |t|
      t.references :beverage, index: true
      t.references :color, index: true

      t.timestamps
    end
  end
end
