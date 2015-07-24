require 'docking_station'

describe DockingStation do

  describe ' #dock' do
    it 'Responds to #dock with a new Bike' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'should raise an error if it is over capacity' do
      subject.capacity.times {subject.dock :bike}
      expect{ subject.dock :bike }.to raise_error "Dock is over capacity!"
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

    it 'should not release a broken bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock bike
      expect{subject.release_bike}.to raise_error "No working bikes available!"
    end

    it " should release a working bike if there is one" do
      working_bike = double :bike, working?: true
      bike2 = double :bike, broken?: true

      subject.dock working_bike
      subject.dock bike2
      expect(subject.release_bike).to be working_bike
    end
  end

end

