require_relative 'bike'        #irb was modified to require ./lib by default

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    if bikes.empty?
     raise 'Bikes not available!'
    else
      bikes.pop
    end
  end

  def dock bike
    if bikes.length >= 20
      raise 'Dock is over capacity!'
    else
      bikes.push bike
    end
  end

  def bikes
    @bikes
  end

end