class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Display different tank environments
  # THE WAY THAT IT IS ALLOWING THE RELATIONSHIP IS NOT WORKING. MAKES THE PAGE NOT LOAD
  get "/brackish" do
    brackish_tank = Critter.where(mytank_id: 1)
    brackish_tank.to_json(:include => [:food, :environment])
  end

  get "/brackish/critters" do
    brackish_tank = Critter.where(environment_id: 1)
    brackish_tank.to_json
  end

  get "/salt" do
    salt_tank = Critter.where(mytank_id: 2)
    salt_tank.to_json(:include => [:food, :environment])
  end

  get "/salt/critters" do
    salt_tank = Critter.where(environment_id: 2)
    salt_tank.to_json
  end

  get "/fresh" do
    fresh_tank = Critter.where(mytank_id: 3)
    fresh_tank.to_json(:include => [:food, :environment])
  end

  get "/fresh/critters" do
    fresh_tank = Critter.where(environment_id: 3)
    fresh_tank.to_json
  end

  get "/environment/:id" do
    environment = Environment.find(params[:id])
    environment.to_json
  end

  get "/food" do
    food = Food.all
    food.to_json
  end

  get "/food/:id" do
    environment = Food.find(params[:id])
    environment.to_json
  end

  patch "/critter/food_update/:id" do 
    critter = Critter.find(params[:id])
    critter.update(
      food_id: params[:food_id]
    )
    critter.to_json
  end

  patch "/critter/tank_update/:id" do 
    critter = Critter.find(params[:id])
    critter.update(
      mytank_id: params[:mytank_id]
    )
    critter.to_json
  end


end
