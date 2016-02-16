require 'pry'

class Person
attr_reader :name, :galleons

  def initialize(name, galleons)
    @name = name
    @galleons = galleons
    puts "#{@name} has been created with #{@galleons} galleons in cash."
  end
end

class Bank
attr_reader

  def initialize(name, galleons, bank_name)
    @name = name
    @galleons = galleons
    @bank_name = bank_name
  end

  def bank_name
    puts "#{@bank_name} bank has been created."
  end

  def open_account
    puts "#{@name} has opened an account with #{@bank_name} with #{@galleons}."
    #have this shit respond back with who opened it, and then their
    #balance as well too so you have a print out of whats going on
  end

  def deposit
    @galleons = galleons + 100
  end
end
