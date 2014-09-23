class Beverage < ActiveRecord::Base

belongs_to :user
has_many :votes
has_many :colors
accepts_nested_attributes_for :colors


end
