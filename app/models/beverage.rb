class Beverage < ActiveRecord::Base


has_many :designs
has_many :beverage_colors
has_many :colors, through: :beverage_colors

end
