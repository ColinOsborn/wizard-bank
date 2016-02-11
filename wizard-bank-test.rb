gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './wizard-bank'

class PersonTest < Minitest::Test
  def test_person_is_created_name
    person1 = Person.new("Minerva", 1000)
    assert_equal "Minerva", person1.name
  end

  def test_person_is_created_galleons
    person1 = Person.new("Minerva", 1000)
    assert_equal 1000, person1.galleons
  end

    def test_another_person_name
      person2 = Person.new("Luna", 500)
      assert_equal "Luna", person2.name
    end

    def test_another_person_galleons
      person2 = Person.new("Luna", 500)
      assert_equal 500, person2.galleons
    end
end

class BankTest < Minitest::Test

    def test_chase_bank_created
      chase = Bank.new("Chase")
      assert_equal "Chase bank has been created.", chase.name
    end

    def test_wellsy_bank_created
      wellsy = Bank.new("Wells Fargo")
      assert_equal "Wells Fargo bank has been created.", wellsy.name
    end

end
