
class Animal
  @@scientific = "Animalia"
  def initialize(species, sound)
    @species = species
    @sound = sound
  end
  # class method
  def self.scientific
    @@scientific
  end

  # class method
  def self.aboutclass
    <<-DOC
    Here you can create object of different animal species.
    DOC
  end

  #instance method
  def get_animal
    "#{@species} is animal, that makes #{@sound} sound."
  end

  #instance method
  def change_species(species)
    @species = species
  end

  #instance method
  def change_plural
    @species = "#{@species}s"
  end

end

puts Animal.aboutclass
dog = Animal.new("Dog", "brake")
puts dog.get_animal

dog.change_plural

puts dog.get_animal

Animal.scientific

#--------------------------------------------------------------------------------------------------------------------



class Player
  @@game = "Call Of Duty"
  @@playercount = 0
  def initialize(name, age ,state, city)
    @name = name
    @age = age
    @state = state
    @city = city
    @@playercount +=1
  end

  #instance method
  def get_name
    @name
  end

  #instance method
  def to_s
    "Name: #{@name}, Age: #{@age}, State: #{@state}"
  end

  #instance method
  def check
    if @state == "MH"
      @state = "Maharashtra"
    end
  end

  # class method
  def self.playercount
    @@playercount
  end
  
  # class method
  def self.change_game
    @@game = "GTA"
  end

  # class method
  def self.create_by_yearofbirth(name, yearofbirth, state, city)
    age = Time.now.year - yearofbirth
    new(name, age, state, city)
  end
end

player1 = Player.new("Vinay", 23, "MH", "Pune")

player2 = Player.create_by_yearofbirth("Nitin", 2002, "MH", "Latur")

puts player2
player2.check
puts player2
puts player2.get_name

puts Player.playercount

puts Player.change_game

#--------------------------------------------------------------------------

class Car
  @@count = 0
  def initialize(name, model, year)
    @name = name
    @model = model
    @year = year
    @@count += 1
  end

  # class method
  def self.class_name
    self.name    
  end

  # class method
  def self.count
    @@count
  end

  # class method
  def self.reset_count
    @@count = 0
  end

  # class method
  def self.variables
    "name, model, year"
  end

  #instance method
  def describe
    puts "#{@name} #{@model} #{@year}"
  end

  #instance method
  def capitalize
    puts @name.capitalize
  end


end

puts Car.class_name

car1 = Car.new("toyoto", "Innovo", 2004)

car1.capitalize

puts car1.describe
puts Car.variables

puts Car.count
puts Car.reset_count
