class Footman < Unit
  attr_accessor :health_points, :attack_power

  def initialize(health_points=60,attack_power=10)
    super(health_points,attack_power)
  end

  def attack!(enemy)
    if enemy.is_a? Barracks
      ap = (@attack_power / 2).ceil 
    else
      ap = @attack_power
    end
    enemy.damage(ap)
  end

end
