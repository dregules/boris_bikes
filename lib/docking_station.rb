require_relative 'bike'        #irb was modified to require ./lib by default

class DockingStation

  def release_bike
    if @bike      # if a bike was docked then it exists
     return @bike
    else
      raise 'Bikes not available!'
    end
  end

  def dock bike
    if @bike
      raise 'There is already a bike docked!'
    else
      @bike = bike
    end
  end

end