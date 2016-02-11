require 'pry'

class Person
attr_reader :name, :gallons

  def initialize(name, gallons)
    @name = name
    @gallons = gallons
  end
end
