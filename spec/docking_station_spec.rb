require 'docking_station'

describe DockingStation do

  docking_station = DockingStation.new
  bike = docking_station.release_bike
  bike2 = Bike.new

  it "responds to release_bike method" do
    expect(docking_station).to respond_to(:release_bike)
  end

  it "responds to working bike method" do
    expect(bike2).to respond_to(:working?)
  end

  it "tests if the bike is working" do
    expect(bike2).to be_working
  end

  it "allows user to dock a bike" do
    expect(docking_station).to respond_to(:dock_bike)
  end

  it "has the method docked?" do
    expect(docking_station).to respond_to(:docked)
  end

  it "tells you if a bike is docked" do
    expect(docking_station.docked).to eq false
  end

  it "raises an error when user tries to release from an empty station" do
    expect{ docking_station.release_bike }.to raise_error('No bikes available')
  end

  it "raises an error when user tries to dock at a full station" do
    docking_station.dock_bike
    expect{ docking_station.dock_bike }.to raise_error('Station is full')
  end
end
