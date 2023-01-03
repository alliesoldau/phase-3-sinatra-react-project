class Environment < ActiveRecord::Base
    has_many :critters 
    has_many :foods, through: :critters
end