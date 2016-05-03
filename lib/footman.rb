# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  attr_accessor :health_points, :attack_power, :damage

  def initialize(health_points=60,attack_power=10)
    @health_points = health_points
    @attack_power  = attack_power
  end

  def attack!(enemy)
    enemy.damage(10)
  end

  def damage(points)
    @health_points -= points
  end

end
