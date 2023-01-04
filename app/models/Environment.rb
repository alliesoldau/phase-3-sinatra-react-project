class Environment < ActiveRecord::Base
    belongs_to :mytank
    has_many :critters 
    has_many :foods, through: :critters
end