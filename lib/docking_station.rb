require_relative 'bike'

class DockingStation
  attr_reader :docked

  def initialize
    @docked = true
  end

  def release_bike
    if @docked  == true
      @docked = false
      Bike.new
    elsif @docked == false
      raise 'No bikes available'
    end
  end

  def dock_bike
    @docked = true
  end

test
end
