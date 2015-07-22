require 'docking_station'

describe DockingStation do
  it 'Responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases/gets bike that works' do
    bike = subject.release_bike                       #expect(subject.release_bike).to be_a Bike #
    expect(bike).to be_working
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

end

