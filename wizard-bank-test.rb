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

    # def test_chase_bank_created
    #   chase = Bank.new("Chase")
    #   chase.bank_name
    #   assert_equal "Chase bank has been created.", chase.bank_name
    # end
    #
    # def test_wellsy_bank_created
    #   wellsy = Bank.new("Wells Fargo")
    #   wellsy.bank_name
    #   assert_equal "Wells Fargo bank has been created.", wellsy.bank_name
    # end

    def test_open_account_with_coin
      acopen = Bank.new("Minerva", 1000, "Wells Fargo")
      acopen.open_account
      assert_equal "Minerva has opened an account with Wells Fargo with 1000.",acopen.open_account
    end

    def test_open_account_with_coin_dos
      anotheropen = Bank.new("Luna", 500, "Chase")
      anotheropen.open_account
      assert_equal "Luna has opened an account with Chase with 500.",anotheropen.open_account
    end

    # def test_does_deposit_work
    #   depositme = Bank.new("")
    #
    # end

end
