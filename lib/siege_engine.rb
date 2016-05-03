class SiegeEngine < Unit
  attr_accessor :health_points, :attack_power

  def initialize(health_points=400,attack_power=50)
    @health_points = health_points
    @attack_power = attack_power
  end

  def can_attack?(enemy)
    if (enemy.is_a? SiegeEngine) || (enemy.is_a? Barracks)
      return true 
    end
  end

  def attack!(enemy)
    if enemy.is_a? Barracks
      ap = @attack_power * 2 
    else
      ap = @attack_power
    end
    enemy.damage(ap) if self.can_attack?(enemy)
  end

  def damage(points)
    self.health_points -= points
  end

end