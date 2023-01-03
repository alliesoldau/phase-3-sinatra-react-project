class Food < ActiveRecord::Base
    has_many :critters 
    has_many :environments, through: :critters
end