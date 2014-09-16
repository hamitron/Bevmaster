class Beverage < ActiveRecord::Base


has_many :designs
has_many :colors
accepts_nested_attributes_for :colors

end
