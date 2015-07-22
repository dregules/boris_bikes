require 'docking_station'

describe DockingStation do
  it 'gets bike that works' do
    bike = subject.dock Bike.new                       #expect(subject.release_bike).to be_a Bike #
    expect(bike).to be_working
  end

  #describe ' #dock' do
    it 'Responds to #dock with a new Bike' do
      expect(subject).to respond_to(:dock).with(1).argument
    end
  #end

  describe ' #release_bike' do
    it 'Responds to release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'Would give a bike if available' do
      bike = subject.dock Bike.new               #Create Bike
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when empty' do
    expect { subject.release_bike }.to raise_error "Bikes not available!"
  end

  end
end

