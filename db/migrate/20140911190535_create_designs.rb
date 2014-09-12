class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :name
      t.string :format

      t.timestamps
    end
  end
end
