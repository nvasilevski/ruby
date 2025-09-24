class Car
  attr_reader :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def to_s
    "#{@year} #{@make} #{@model}"
  end
end

class Garage
  include Enumerable

  def initialize
    @cars = []
  end

  def add_car(car)
    @cars << car
  end

  def to_s
    @cars.join("\n")
  end

  def each
    return to_enum unless block_given?

    @cars.each { |car| yield car }
  end
end

garage = Garage.new
garage.add_car(Car.new("Toyota", "Camry", 2020))
garage.add_car(Car.new("Honda", "Accord", 2021))
garage.add_car(Car.new("Ford", "F-150", 2022))

module Enumerable
  def each_with_index
    return to_enum.with_index unless block_given?

    to_enum.with_index.each { |el| yield(el) }
  end
end
