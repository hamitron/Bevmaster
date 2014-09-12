class Beverage < ActiveRecord::Base


has_many :designs
has_many :colors

end
