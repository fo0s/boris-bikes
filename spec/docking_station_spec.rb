require 'docking_station'
require 'bike.rb'

describe DockingStation do
  # The before block is executed before each test
  # It is called a before hook, and the (:each) part determines the scope of execution
    # :each means that it will execute for each test
    # :all would be the other option

  before(:each) do
    @docking_station = DockingStation.new
    @docking_station.dock(Bike.new)
  end

  it { is_expected.to respond_to(:roopelease_bike) }

  it 'releases a bike when called with .release_bike' do
    # @docking_station created in the before block
    expect(@docking_station.release_bike).to be_kind_of(Bike)
  end

  it 'releases a bike that works when called with .release_bike' do
    # @docking_station created in the before block
    expect(@docking_station.release_bike.working?).to be(true)
  end

  it { is_expected.to respond_to(:dock) }

  # REDO with RSpec. feature

  # we need a bike object so not using the before():each) implementation
  it 'docks a bike' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.bikes).to include(bike)
  end

  # raises an error is no bike in the docking_station
  it 'raises an error if .release_bike called when no bikes' do
    # creates a docking station with an empty []
    expect { DockingStation.new.release_bike }.to raise_error('No bikes')
  end
end
