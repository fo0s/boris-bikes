require 'docking-station'
describe DockingStation do
  # write a test that 'expects' DockingStation instances to 'respond_to' the
  # release_bike method
  # first attempt
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end
  # second attempt
  it { is_expected.to respond_to :release_bike }
  # write a test for the creation of a bike and that expects the bike to be working
  it 'releases working bike' do
    # bike = subject.release_bike
    bike = Bike.new  # release_bike no longer creates bike
    expect(bike).to be_working
  end
  # write a test for the docking of a bike i.e. a test on a method that requires
  # an argument
  # it {is_expected.to respond_to(:dock).with(1).argument }
  it 'docks a bike' do
    # bike = subject.release_bike
    bike = Bike.new  # release_bike no longer creates bike
    expect(subject.dock(bike)).to eq bike
  end
  # we're using a nested describe block here because we are describing the behaviour
  # of a specific method within a class
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      # don't need to dock a bike first
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end
  # check if the dock is full when we try to dock a new bike
  describe '#dock' do
    it 'raises an error if dock capacity is full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock(Bike.new)
      end
      expect{subject.dock(Bike.new)}.to raise_error 'Dockstation is full'
    end
  end

  it 'returns a non-default capacity' do
    expect(DockingStation.new(25).capacity).to eq 25
  end

end
