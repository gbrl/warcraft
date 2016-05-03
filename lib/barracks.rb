require 'numeric'

class Barracks
  attr_accessor :food, :gold, :health_points, :lumber

  def initialize(food=80,gold=1000,health_points=500,lumber=500)
    @food          = food
    @gold          = gold
    @health_points = health_points
    @lumber        = lumber
  end

  def can_train_footman?
    self.gold > 135 && self.food > 2
  end

  def can_train_peasant?
    self.gold > 90 && self.food > 5
  end

  def can_build_siege_engine?
    self.gold > 200 && self.food > 3 && self.lumber > 60
  end

  def train_footman
    if can_train_footman?
      self.food -= 2
      self.gold -= 135
      footman    = Footman.new
    end
  end

  def train_peasant
    if can_train_peasant?
      self.food -= 5
      self.gold -= 90
      peasant    = Peasant.new
    end
  end

  def build_siege_engine
    if can_build_siege_engine?
      self.food    -= 3
      self.gold    -= 200
      self.lumber  -= 60
      siege_engine  = SiegeEngine.new
    end
  end

  def damage(points)
    @health_points -= points
  end
end
