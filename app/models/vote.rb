class Vote < ActiveRecord::Base

belongs_to :beverage



state_machine :state, :initial => :unassigned do 
	state :unassigned
	state :positive
	state :negative
	state :meh
	state :flagged

event :love do 
	transition all => :positive 
end

event :whatev do 
	transition all => :meh
end

event :hate do
	transition all => :negative
end

event :flag  do 
	transition all => :flagged
end
end
	
  

end
