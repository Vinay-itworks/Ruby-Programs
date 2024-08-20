
class Arena
  CONSTANT = "I am a Constant."
  def initialize(width = 500, breadth = 500)
    @width = width
    @breadth = breadth
  end

  def show_arena
    "Arena space: #{@width * @breadth}"
  end
end

class Squad

  def initialize(squadlevel)
    @squadlevel = squadlevel
  end

  def get_squadlevel
    @squadlevel
  end
end

class Player < Arena
  # Initialize our class variables
  @@playercount = 0
  # class constractor
  def initialize(id, health, damage, level, width = 500, breadth = 500)
    super(width, breadth)  # Call the parent class's initialize method
    @id = id
    @health = health
    @damage = damage
    @level = level
    @@playercount +=1

  end

  # setter method
  def set_health(value)
    @health = value
  end

  def set_damage(value)
    @damage = value
  end

  def set_level(value)
    @level = value
  end

  # getter method

  def self.get_players
    @@playercount
  end

  def get_health
    @health
  end
  
  def get_damage
    @damage
  end

  def get_level
    @level
  end

  # define to_s method
  def to_s
    <<-STAT
    player: #@id
    health: #@health
    damage: #@damage
    level: #@level
    STAT
  end

  def +(other)
    "Combined level #{(self.get_level + other.get_level)/2}"
  end
end


# class Arena
#   def initialize(width = 500, breadth = 500)
#     @width = width
#     @breadth = breadth
#   end

#   def show_arena
#     "Arena space: #{@width * @breadth}"
#   end
# end

# class Player < Arena
#   # Initialize our class variables
#   @@playercount = 0
#   # class constractor
#   def initialize(id, health, damage, level)
#     @id = id
#     @health = health
#     @damage = damage
#     @level = level
#     @@playercount +=1

#   end
# end

# puts Player.new("john", 100, 0, 3).show_arena