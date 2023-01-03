puts "Deleting data..."
Environment.destroy_all
Food.destroy_all
Critter.destroy_all

puts "🌱 Seeding data..."


puts  "🌊 Seeding environment data..."

brackish = Environment.create(environment_name: "brackish", water_type: "brackish", water_temperature: 77) 
salt = Environment.create(environment_name: "salt", water_type: "salt", water_temperature: 81) 
fresh = Environment.create(environment_name: "fresh", water_type: "fresh", water_temperature: 79) 


puts  "🦐 Seeding food data..."

flakes = Food.create(food_type: "freeze_dried", food_name: "flakes")
shrimp = Food.create(food_type: "live", food_name: "shrimp")
crab = Food.create(food_type: "live", food_name: "crab")
worms = Food.create(food_type: "live", food_name: "worms")
algae = Food.create(food_type: "live", food_name: "algae")
detritus = Food.create(food_type: "detritus", food_name: "detritus")


puts  "🐟 Seeding critter data..."

ballon_molly = Critter.create(critter_name: "ballon_molly", critter_type: "fish", food_id: flakes.id, environment_id: brackish.id)
black_fin_shark = Critter.create(critter_name: "black_fin_shark", critter_type: "shark", food_id: shrimp.id, environment_id: brackish.id)
crab_eating_frog = Critter.create(critter_name: "crab_eating_frog", critter_type: "frog", food_id: crab.id, environment_id: brackish.id)
mudskipper = Critter.create(critter_name: "mudskipper", critter_type: "fish", food_id: worms.id, environment_id: brackish.id)
# bumblebee_goby = Critter.create(critter_name: "bumblebee_goby", critter_type: "fish", food_id: shrimp.id, environment_id: brackish.id)
# mono_fish = Critter.create(critter_name: "mono_fish", critter_type: "fish", food_id: worms.id, environment_id: brackish.id)
# cichlid_chromides = Critter.create(critter_name: "cichlid_chromides", critter_type: "fish", food_id: flakes.id, environment_id: brackish.id)
# endler = Critter.create(critter_name: "endler", critter_type: "fish", food_id: algae.id, environment_id: brackish.id)

snail = Critter.create(critter_name: "snail", critter_type: "shelled", food_id: algae.id, environment_id: salt.id)
hermit_crab = Critter.create(critter_name: "hermit_crab", critter_type: "shelled", food_id: algae.id, environment_id: salt.id)
cleaner_shrimp = Critter.create(critter_name: "cleaner_shrimp", critter_type: "shrimp", food_id: detritus.id, environment_id: salt.id)
emerald_crab = Critter.create(critter_name: "emerald_crab", critter_type: "shelled", food_id: algae.id, environment_id: salt.id)
# sea_star = Critter.create(critter_name: "sea_star", critter_type: "star", food_id: worms.id, environment_id: salt.id)
# clown_fish = Critter.create(critter_name: "clown_fish", critter_type: "fish", food_id: detritus.id, environment_id: salt.id)
# hog_fish = Critter.create(critter_name: "hog_fish", critter_type: "fish", food_id: crab.id, environment_id: salt.id)
# damsel = Critter.create(critter_name: "damsel", critter_type: "fish", food_id: algae.id, environment_id: salt.id)

frog = Critter.create(critter_name: "frog", critter_type: "frog", food_id: worms.id, environment_id: fresh.id)
plecko = Critter.create(critter_name: "plecko", critter_type: "fish", food_id: algae.id, environment_id: fresh.id)
goldfish = Critter.create(critter_name: "goldfish", critter_type: "fish", food_id: flakes.id, environment_id: fresh.id)
danio = Critter.create(critter_name: "danio", critter_type: "fish", food_id: flakes.id, environment_id: fresh.id)
# pinto_shrimp = Critter.create(critter_name: "pinto_shrimp", critter_type: "shrimp", food_id: detritus.id, environment_id: fresh.id)
# rainbow_shark = Critter.create(critter_name: "rainbow_shark", critter_type: "shark", food_id: algae.id, environment_id: fresh.id)
# guppy = Critter.create(critter_name: "guppy", critter_type: "fish", food_id: flakes.id, environment_id: fresh.id)
# tetra = Critter.create(critter_name: "tetra", critter_type: "fish", food_id: flakes.id, environment_id: fresh.id)

puts "✅ Done seeding!"


