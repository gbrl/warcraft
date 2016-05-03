class Unit
  attr_reader :health_points, :attack_power

  def initialize(health_points,attack_power)
    @health_points = health_points
    @attack_power  = attack_power
  end

  def damage(points)
    @health_points -= points
  end

  def attack!(enemy)
    if enemy.dead? || self.dead?
      enemy.damage(0)
    else
      enemy.damage(3) 
    end
  end

  def dead?
    @health_points <= 0
  end

end