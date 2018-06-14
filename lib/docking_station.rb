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
    if @docked == false
      @docked = true
    else
      raise 'Station is full'
    end
  end

end
