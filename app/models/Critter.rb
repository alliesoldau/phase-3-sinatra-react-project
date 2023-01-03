class Critter < ActiveRecord::Base
    belongs_to :environment 
    belongs_to :food
end