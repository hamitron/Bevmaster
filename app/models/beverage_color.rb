class BeverageColor < ActiveRecord::Base
  belongs_to :beverage
  belongs_to :color
end
