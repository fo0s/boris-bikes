require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :dock, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @dock = []
    @capacity = capacity
  end

  # updated under the assumption that docks start empty
  def release_bike
    fail 'No bikes available' if empty?
    @bike = @dock.pop
  end

  def dock(bike)
    fail 'Dockstation is full' if full?
    @dock << bike
    @dock[-1]
  end

  private
  def full?
    @dock.size >= DEFAULT_CAPACITY
  end

  def empty?
    @dock.empty?
  end

end
