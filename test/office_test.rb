require 'minitest/autorun'
require 'minitest/pride'
require './lib/office'

class OfficeTest < Minitest::Test

  def test_it_has_a_name
    office = Office.new("MSC")
    assert_equal "MSC", office.name
  end

  def test_it_can_restock_office_supply
    office = Office.new("MSC")
    office.restock_office_supplies("Pen", 500) 
    assert_equal ["Pen"], office.office_supplies
    office.restock_office_supplies("Pencils", 1500)
    assert_equal ["Pen", "Pencils"], office.office_supplies
  end

  def test_it_tracks_amount_of_a_supply_required
    office = Office.new("MSC")
    office.restock_office_supplies("Pen", 500)
    assert_equal 500, office.amount_requested("Pen")
  end

end
