require_relative 'spec_helper'

=begin
  
rescue Introduce a SiegeEngine Unit. The SiegeEngine is very effective against buildings such as the Barracks. 
However, it is ineffective against other Units. (It can't attack them, as if they were dead.)

So unlike with Footman (whose attacks do a fraction of the damage they normally would,) a SiegeEngine does 2× damage against a Barracks.

Also, SiegeEngines can attack other SiegeEngines even though they cannot attack any other Units (such as Peasants or Footmans.)
=end

  
describe SiegeEngine do

  before :each do
    @siege_engine1  = SiegeEngine.new
    @siege_engine2  = SiegeEngine.new
    @barracks       = Barracks.new
    @unit           = Unit.new(100,100)
    @footman        = Footman.new
    @peasant        = Peasant.new
  end

  describe "#damage" do
    it "should double the damage to a barrack when a siege_engine attacks it" do
      @siege_engine1.attack!(@barracks)
      expect(@barracks.health_points).to eq(400) # starts at 500
    end

    it "should NOT double the damage to another siege_engine when a siege_engine attacks it" do
      @siege_engine1.attack!(@siege_engine2)
      expect(@siege_engine2.health_points).to eq(350) # starts at 400
    end

    it "should NOT change health_points of unit when a siege_engine attacks it" do
      unit_hp = @unit.health_points
      @siege_engine1.attack!(@unit)
      expect(@unit.health_points).to eq(unit_hp) # starts at 400
    end

    it "should NOT change health_points of footman when a siege_engine attacks it" do
      footman_hp = @footman.health_points
      @siege_engine1.attack!(@footman)
      expect(@footman.health_points).to eq(footman_hp) # starts at 400
    end

    it "should NOT change health_points of peasant when a siege_engine attacks it" do
      peasant_hp = @peasant.health_points
      @siege_engine1.attack!(@peansant)
      expect(@peasant.health_points).to eq(peasant_hp) # starts at 400
    end
  end

end

