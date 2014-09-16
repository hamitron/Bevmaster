class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    # This boolean opperator is how I'm handling votes.  You either approve of a design or you don't.  on or off.
    t.references :user, index: true
    t.references :design, index: true
    t.integer :state
    t.index  :state





    t.timestamps
    end
  end
end
