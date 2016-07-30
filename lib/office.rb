class Office
  attr_reader :name

  def initialize(name)
    @name = name
    @office_supplies = {}
  end

  def restock_office_supplies(supply, quantity)
    @office_supplies[supply] = quantity
  end

  def office_supplies
    @office_supplies.keys.sort
  end

  def amount_requested(supply)
    @office_supplies[supply]
  end

end
