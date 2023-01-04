class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Display different tank environments
  # THE WAY THAT IT IS ALLOWING THE RELATIONSHIP IS NOT WORKING. MAKES THE PAGE NOT LOAD
  get "/brackish" do
    brackish_tank = Critter.where(environment_id: 1)
    brackish_tank.to_json(:include => [:food, :environment])
  end

  get "/salt" do
    salt_tank = Critter.where(environment_id: 2)
    salt_tank.to_json(:include => [:food, :environment])
  end

  get "/fresh" do
    fresh_tank = Critter.where(environment_id: 3)
    fresh_tank.to_json(:include => [:food, :environment])
  end

  get "/environment/:id" do
    environment = Environment.find(params[:id])
    environment.to_json
  end

  get "/food/:id" do
    environment = Food.find(params[:id])
    environment.to_json
  end
end
