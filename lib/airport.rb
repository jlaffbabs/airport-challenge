require_relative 'plane'
require_relative 'weather'

class Airport
DEFAULT_CAPACITY = 20
attr_reader :hangar

  def initialize(weather, capacity = DEFAULT_CAPACITY)
    @weather = weather
    @capacity = capacity
    @hangar = []
  end

  def land(plane)
    raise 'Cannot land plane: airport full.' if full?
    raise 'Cannot land plane: weather is stormy.' if stormy?
    plane.land(self)
    add_plane(plane)
  end

  def take_off(plane)
    raise 'Cannot take off plane: weather is stormy.' if stormy?
    raise 'Cannot take off plane: plane not at this airport.' unless at_airport?(plane)
    plane.take_off
    remove_plane(plane)
    plane
  end

  private

  attr_reader :capacity, :weather

  def stormy?
    weather.stormy?
  end

  def full?
    hangar.length >= capacity
  end

  def at_airport?(plane)
    hangar.include?(plane)
  end

  def add_plane(plane)
    hangar << plane
  end

  def remove_plane(plane)
    hangar.pop
  end
end
