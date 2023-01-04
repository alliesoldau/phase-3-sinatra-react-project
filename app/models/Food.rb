class Food < ActiveRecord::Base
    has_many :critters 
    has_many :environments, through: :critters
    has_many :mytanks, through: :critters
end