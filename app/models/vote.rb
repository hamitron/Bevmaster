class Vote < ActiveRecord::Base

belongs_to :user, through: :design
belongs_to :beverage

end
