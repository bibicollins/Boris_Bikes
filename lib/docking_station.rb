require_relative 'bike'

class DockingStation
  attr_reader :docked

  def initialize
    @docked = true
  end

  def release_bike
    Bike.new
  end

  def dock_bike
  end



   #def docked?
  #  @docked
  #end
end
