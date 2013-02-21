require 'spec_helper'
require 'party'
require 'person'
require 'host'
require 'guest'

describe Party do
   let(:party) { Party.new(guests) }

  let(:guests) do
      [ Person.new("Trace", Host),
        Person.new("Sabrina", Guest),
        Person.new("Avi", Guest) ]
  end

  describe "#host_event" do
     subject { party.host_event.join(',') }

     it { should include("arrive") }
     # it { should include("drink") }
     # it { should include("dance") }
     # it { should include("home") }
  end

  describe "#begin_party" do

    it "shows that people arrive" do
      party.begin_party.should == [
        "Trace arrives at the party",
        "Sabrina arrives at the party",
        "Avi arrives at the party"
      ]
    end
  end

  # describe "#fun" do
    # it "shows that people drink"
    # it "people dance"
  # end

  describe "#end_party" do

    it "shows that people take the correct action at the end" do
      party.end_party.should == [
        "Trace goes to bed",
        "Sabrina goes home",
        "Avi goes home"
      ]
    end
  end


end

