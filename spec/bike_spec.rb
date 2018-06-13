require 'bike'

  describe Bike do
    bike1 = Bike.new

    it "responds to working method" do
      expect(bike1).to respond_to(:working?)
  end
end
