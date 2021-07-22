class Passenger
  attr_reader :name,
              :age,
              :driver

  def initialize(params)
    @name = params["name"]
    @age  = params["age"]
    @driver = false
  end

  def adult?
    age >= 18
  end

  def driver?
    driver
  end

  def drive
    @driver = true
  end
end
