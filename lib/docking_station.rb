require_relative 'bike'        #irb was modified to require ./lib by default

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
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

  # def capacity
  #   DEFAULT_CAPACITY
  # end


  private

  def full?
    bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    bikes.empty?
  end
end