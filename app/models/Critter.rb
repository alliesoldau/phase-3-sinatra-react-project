class Critter < ActiveRecord::Base
    belongs_to :environment 
    belongs_to :food

    # def food_of_choice 
    #     self.food.food_name
    # end

end