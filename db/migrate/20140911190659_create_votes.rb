class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    t.references :beverage, index: true
    t.integer :user_id
    t.string :state






    t.timestamps
    end
  end
end
