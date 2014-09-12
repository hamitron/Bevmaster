class Color < ActiveRecord::Base



has_many :beverage_colors
has_many :beverages, through: :beverage_colors

end
