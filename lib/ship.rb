class Boat

  attr_accessor :ships
  def initialize
    @ships = {"carrier"    => 5,
              "battleship" => 4,
              "sumbarine"  => 3,
              "patrol"     => 2}
  end

end
