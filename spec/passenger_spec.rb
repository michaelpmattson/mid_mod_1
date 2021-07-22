require './lib/passenger'

RSpec.describe Passenger do
  context '#initialize' do
    it 'exists' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(charlie).to be_an_instance_of(Passenger)
    end

    it 'has attributes' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
      expect(charlie.driver).to be(false)
    end
  end

  context '#adult?' do
    it 'verifies adult' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.adult?).to be(true)
      expect(taylor.adult?).to be(false)
    end
  end

  context '#driver?' do
    it 'verifies driver' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(charlie.driver?).to be(false)

      charlie.drive

      expect(charlie.driver?).to be(true)
    end
  end

  context '#drive' do
    it 'changes driver to true' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})

      expect(charlie.driver).to be(false)

      charlie.drive

      expect(charlie.driver).to be(true)
    end
  end
end
