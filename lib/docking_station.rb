require_relative 'bike'        #irb was modified to require ./lib by default

class DockingStation
  def release_bike
    Bike.new
  end

  def dock bike
  end

end