require_relative 'bike'
class DockingStation

  attr_reader :bike

  # # An older version
  # def release_bike
  #   Bike.new
  # end

  # updated under the assumption that docks start empty
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Dockstation is full' if @bike # (not future proof code as dockstation capacity can only be 1)
    @bike = bike
  end

  # not required because this is what attr_reader does
  # def bike
  #   @bike
  # end

end
