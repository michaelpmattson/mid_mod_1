## xiteration 2
# Use TDD to create a `Vehicle` class that responds to the following interaction pattern:

require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  context '#initialize' do
    it 'exists' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_an_instance_of(Vehicle)
    end

    it 'has attributes' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
      expect(vehicle.speeding).to be(false)
      expect(vehicle.passengers).to eq([])
    end
  end

  context '#speeding?' do
    it 'verifies speeding' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to eq(false)

      vehicle.speed

      expect(vehicle.speeding?).to eq(true)
    end
  end

  context '#speeding' do
    it 'changes speeding to true' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding).to eq(false)

      vehicle.speed

      expect(vehicle.speeding).to eq(true)
    end
  end

  context '#add_passenger' do
    it 'adds passenger' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end

  context '#num_adults' do
    it 'text' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.num_adults).to eq(2)
    end
  end
end
