class Barracks
  attr_accessor :food,:gold

  def initialize(food=80,gold=1000)
    @food = food
    @gold = gold
  end

  def can_train_footman?
    self.gold > 135 && self.food > 2
  end

    def can_train_peasant?
    self.gold > 90 && self.food > 5
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
end
