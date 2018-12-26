require_relative 'plane'

class Airport
  def land(plane)
  end

  def take_off(plane)
    raise 'Cannot take off plane: weather is stormy.' if stormy?
  end

  private

  def stormy?
    rand(1..6) > 4
  end
end
