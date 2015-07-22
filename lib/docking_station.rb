require_relative 'bike'        #irb was modified to require ./lib by default

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    if empty?
     raise 'Bikes not available!'
    else
      bikes.pop
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