class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Display different tank environments
  get "/brackish" do
    brackish_tank = Critter.where(mytank_id: 1)
    brackish_tank.to_json(:include => [:food, :environment])
  end

  get "/brackish/critters" do
    brackish_tank = Critter.where(environment_id: 1)
    brackish_tank.to_json
  end

  get "/brackish/tank/critters" do
    brackish_tank = Critter.where(mytank_id: 1)
    brackish_tank.to_json
  end

  get "/brackish/tank/unusedCritters" do
    brackish_env_critters = Critter.where(environment_id: 1)
    brackish_tank_unused = brackish_env_critters.where(mytank_id: nil)
    brackish_tank_unused.to_json
  end

  get "/salt" do
    salt_tank = Critter.where(mytank_id: 2)
    salt_tank.to_json(:include => [:food, :environment])
  end

  get "/salt/critters" do
    salt_tank = Critter.where(environment_id: 2)
    salt_tank.to_json
  end

  get "/salt/tank/critters" do
    salt_tank = Critter.where(mytank_id: 2)
    salt_tank.to_json
  end

  get "/salt/tank/unusedCritters" do
    salt_env_critters = Critter.where(environment_id: 2)
    salt_tank_unused = salt_env_critters.where(mytank_id: nil)
    salt_tank_unused.to_json
  end

  get "/fresh" do
    fresh_tank = Critter.where(mytank_id: 3)
    fresh_tank.to_json(:include => [:food, :environment])
  end

  get "/fresh/critters" do
    fresh_tank = Critter.where(environment_id: 3)
    fresh_tank.to_json
  end

  get "/fresh/tank/critters" do
    fresh_tank = Critter.where(mytank_id: 3)
    fresh_tank.to_json
  end

  get "/fresh/tank/unusedCritters" do
    fresh_env_critters = Critter.where(environment_id: 2)
    fresh_tank_unused = fresh_env_critters.where(mytank_id: nil)
    fresh_tank_unused.to_json
  end

  get "/critter/:id" do
    critter = Critter.find(params[:id])
    critter.to_json
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

  delete "/critter/delete/:id" do
    RIP = Critter.find(params[:id])
    RIP.destroy
    RIP.to_json
  end

  post "/foods" do 
    new_food = Food.create(
      food_name: params[:food_name],
      food_type: params[:food_type]
    )
    new_food.to_json
  end

  post "/critters" do 
    new_critter = Critter.create(
      critter_name: params[:critter_name],
      critter_type: params[:critter_type],
      food_id: params[:food_id],
      environment_id: params[:environment_id]
    )
    new_critter.to_json
  end

end
