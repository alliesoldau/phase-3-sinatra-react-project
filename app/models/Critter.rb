class Critter < ActiveRecord::Base
    belongs_to :environment 
    belongs_to :food
    belongs_to :mytank
end