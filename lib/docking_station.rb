# require 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    raise "No bikes in the docking station" unless @bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  # def bike
  #   @bike
  # end


end
