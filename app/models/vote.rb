class Vote < ActiveRecord::Base

belongs_to :user
belongs_to :design



	state_machine :state, :initial => :unassigned do 
		state :unassigned, value: 0
		state :positive, value: 1
		state :negative, value: 2
		state :meh, value: 3
		state :flagged, value: 4

		event :love do 
			transition :unassigned => :positive 
		end

		event :whatev do 
			transition :unassigned => :meh
		end

		event :hate do
			transition :unassigned => :negative
		end

		event :flag  do 
			transition :unassigned => :flagged
		end
	end
		
  

end
