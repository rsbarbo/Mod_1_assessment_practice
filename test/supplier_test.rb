


def test_to_check_the_supplier_stock
  supplier = Supplier.new
  assert_equal 0, supplier.stock_check("Pen")
  supplier.restock("Pen", 10)
  assert_equal 10, supplier.stock_check("Pen")
  supplier.restock("Pen", 10)
  assert_equal 20, supplier.stock_check("Pen")
end

def test_shopping_list
  skip
  supplier = Supplier.new
  office = Office.new("MSC")
  office.restock_office_supplies("Pen", 20)
  office.restock_office_supplies("Pencil", 20)
  supplier.add_to_shopping_list(office)
  office = Office.new("Maersk")
  office.restock_office_supplies("Notebook", 10)
  office.restock_office_supplies("LogBook", 10)
  supplier.add_to_shopping_list(office)
  assert_equal({"Pen" => 20, "Pencil" => 20, "Notebook" => 10, "LogBook" => 10}, supplier.shopping_list)
end
