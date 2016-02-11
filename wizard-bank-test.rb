gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './wizard-bank'

class PersonTest < Minitest::Test
  def test_person_is_created_name
    person1 = Person.new("Minerva", 1000)
    assert_equal "Minerva", person1.name
  end

  def test_person_is_created_gallons
    person1 = Person.new("Minerva", 1000)
    assert_equal 1000, person1.gallons
  end


end
