require_relative 'plane'

class Airport
  def initialize(capacity)
    @capacity = capacity
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
    rand(1..6) > 4
  end

  def full?
    @hangar.length >= @capacity
  end
end
