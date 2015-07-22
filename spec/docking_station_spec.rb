require 'docking_station'

describe DockingStation do
  it 'gets bike that works' do
    subject.dock Bike.new                       #expect(subject.release_bike).to be_a Bike #
    expect(subject.release_bike).to be_working
  end

  describe ' #dock' do
    it 'Responds to #dock with a new Bike' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'should raise an error if it is over capacity' do
      subject.capacity.times {subject.dock Bike.new}
      expect{ subject.dock Bike.new }.to raise_error "Dock is over capacity!"
    end
  end

  describe ' #release_bike' do
    it 'Responds to release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it ' raises an error when empty' do
      expect { subject.release_bike }.to raise_error "Bikes not available!"
    end

    it ' removes @bike from array after being released' do
      subject.dock Bike.new
      bikes_length_before_release = subject.bikes.length
      subject.release_bike
      expect(subject.bikes.length).to eq(bikes_length_before_release - 1)
    end
  end

end

