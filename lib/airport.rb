require_relative 'plane'
require_relative 'weather'

class Airport
  def initialize(capacity, weather)
    @capacity = capacity
    @weather = weather
    @hangar = []
  end

  def land(plane)
    raise 'Cannot land plane: airport full.' if full?
    raise 'Cannot land plane: weather is stormy.' if stormy?
    @hangar << plane
  end

  def take_off(plane)
    raise 'Cannot take off plane: weather is stormy.' if stormy?
  end

  private

  def stormy?
    @weather.stormy?
  end

  def full?
    @hangar.length >= @capacity
  end
end
