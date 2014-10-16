class CreateTrinkets < ActiveRecord::Migration
  def change
    create_table :trinkets do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
