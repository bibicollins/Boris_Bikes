require 'bike'

describe Bike do
  it 'responds to working method' do
    expect(subject).to respond_to(:working?)
  end
  it 'tests if the bike is working' do
    expect(subject).to be_working
  end
end
