require_relative 'bike'        #irb was modified to require ./lib by default

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    working_bikes = @bikes.select {|bike| bike.working?}
    broken_bikes = @bikes.select {|bike| bike.broken?}

    if empty?
      raise 'Bikes not available!'
    elsif working_bikes.empty?
      raise "No working bikes available!"
    else
      releasing_bike = working_bikes.pop
      @bikes = working_bikes + broken_bikes
      releasing_bike
    end
  end

  def dock bike
    if full?
      raise 'Dock is over capacity!'
    else
      bikes.push bike
    end
  end

  def bikes
    @bikes
  end

  private

      def full?
        bikes.length >= capacity
      end

      def empty?
        bikes.empty?
      end
end