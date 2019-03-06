require './lib/docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  # it 'gets and bike and expects it to be working' do
  #   docking_station = DockingStation.new
  #   expect(docking_station.release_bike).to be_working
  # end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
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
