require_relative 'spec_helper'

# A dead Unit cannot attack another Unit. 
# Conversely, an alive Unit will also not attack another Unit that is already dead.

describe Unit do

  before :each do
    @live_unit = Unit.new(1,1)
    @live_enemy = Unit.new(1,1)
    @dead_unit = Unit.new(0,0)
    @dead_enemy = Unit.new(0,0)
  end

    describe "#can_attack" do
    it "health_points of dead unit should not change when attacked." do
      dead_unit_hp = @dead_unit.health_points
      @live_unit.attack!(@dead_unit)
      expect(dead_unit_hp).to eq(@dead_unit.health_points)
    end
    it "health_points of live unit should not change when attacked by dead unit." do
      live_unit_hp = @live_unit.health_points
      @dead_unit.attack!(@live_unit)
      expect(live_unit_hp).to eq(@live_unit.health_points)
    end
  end

end

