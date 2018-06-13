require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  bike = docking_station.release_bike
  it "responds to release_bike method" do
  expect(docking_station).to respond_to(:release_bike)
  end
  it "gets a working bike" do
    expect(bike).to respond_to(:working?)
  end
  it "tests if the bike is working" do
    expect(bike.working?).to eq true
  end 
end
