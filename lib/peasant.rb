class Peasant < Unit
  attr_accessor :health_points, :attack_power, :damage

  def initialize(health_points=35,attack_power=0)
    @health_points = health_points
    @attack_power  = attack_power
  end
  
end