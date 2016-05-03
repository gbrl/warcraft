require_relative 'spec_helper'

#In most strategy games, like Warcraft III, buildings can also be attacked by Units. Since a Barracks is a building, 
#it has substantially more HP (500). Additionally, a Footman does only half of its AP as damage to a Barracks. 
#This is because they are quite ineffective against buildings.

#The damage amount should be an integer (Fixnum), but the ceiling (ceil) of the division should be used as the resulting amount.

describe Barracks do

  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end

    describe "#damage" do
    it "should reduce the barrack's health_points by half the attack_power specified" do
      @footman.attack!(@barracks)
      expect(@barracks.health_points).to eq(495) # starts at 500
    end
  end

end

