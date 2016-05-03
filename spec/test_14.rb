require_relative 'spec_helper'

# Aside from gold and food, there is also the concept of lumber. 
# Add lumber as a resource that a Barracks can handle.
# A Barracks starts off with 500 lumber.

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

   describe "#lumber" do
    it "barracks has 500 lumber" do
      expect(@barracks.lumber).to eq(500)
    end
  end

end