class Mytank < ActiveRecord::Base
    belongs_to :environment 
    has_many :critters
    has_many :foods, through: :critters
end