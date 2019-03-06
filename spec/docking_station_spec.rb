require './lib/docking_station'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    # it 'gets and bike and expects it to be working' do
    #   docking_station = DockingStation.new
    #   expect(docking_station.release_bike).to be_working
    # end

  #   it 'releases working bikes' do
  #     bike = Bike.new
  #     subject.dock(bike)
  #     expect(subject.release_bike).to be_working
  #   end
  # end

    it 'releases bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'it raises an error if no bikes' do
      expect {subject.release_bike}.to raise_error("No bikes in the docking station")
    end
    
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'dock a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to :bike }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
