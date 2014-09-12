class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :name
      t.string :format
      t.references :user, index: true
      t.references :beverage, index: true
      

      t.timestamps
    end
  end
end
