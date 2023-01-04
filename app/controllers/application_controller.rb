class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Display different tank environments
  # THE WAY THAT IT IS ALLOWING THE RELATIONSHIP IS NOT WORKING. MAKES THE PAGE NOT LOAD
  get "/brackish" do
    brackish_tank = Critter.where(environment_id: 1)
    brackish_tank.to_json(:include => [:food, :environment])
  end

  # game.to_json(only: [:id, :title, :genre, :price], 
  # include: {
  #   reviews: { only: [:comment, :score], include: {
  #     user: { only: [:name] }
  #   } }
  # })

  get "/salt" do
    salt_tank = Critter.where(environment_id: 2)
    salt_tank.to_json(:include => [:food, :environment])
  end

  get "/fresh" do
    fresh_tank = Critter.where(environment_id: 3)
    fresh_tank.to_json(:include => [:food, :environment])
  end

  # get "/critter/:id" do 
  #   critter_details = Critter.find(params[:id])
  #   critter_details.to_json(:include => [:food, :environment])
  # end

end
