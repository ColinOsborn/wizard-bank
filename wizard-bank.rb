require 'pry'

class Person
attr_reader :name, :galleons

  def initialize(name, galleons)
    @name = name
    @galleons = galleons
    "#{@name} has been created with #{@galleons} galleons in cash."
  end
end

class Bank
attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    "#{@name} bank has been created."
  end
end
