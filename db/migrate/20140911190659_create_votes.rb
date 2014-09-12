class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    # This boolean opperator is how I'm handling votes.  You either approve of a design or you don't.  on or off.
    t.boolean :approval 
    t.references :user, index: true
    t.references :beverage, index: true
    t.timestamps
    end
  end
end
