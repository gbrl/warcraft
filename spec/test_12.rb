require_relative 'spec_helper'

#Units start off alive but they die if their HP hits 0 or lower. 
#This is usually a result of receiving damage from combat.
# All Units can die, not just Footmans or Peasants.



describe Unit do

  before :each do
    @unit = Unit.new(0,0)
  end

    describe "#dead" do
    it "should return true when .dead? is called on unit with 0 or < 0 health_points" do
      expect(@unit.dead?).to eq(true)
    end
  end

end

