require 'docking_station'

describe DockingStation do
  it 'responds to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'allows user to dock a bike' do
    expect(subject).to respond_to(:dock_bike)
  end

  it 'has the method docked?' do
    expect(subject).to respond_to(:docked)
  end

  it 'tells you if a bike is docked' do
    subject.release_bike
    expect(subject.docked).to eq false
  end

  it 'raises an error when user tries to release from an empty station' do
    subject.release_bike
    expect { subject.release_bike }.to raise_error('No bikes available')
  end

  it 'raises an error when user tries to dock at a full station' do
    expect { subject.dock_bike }.to raise_error('Station is full')
  end
end
