require 'grid'

describe Grid do

  it "show length of ship selected" do
    ship = Grid.new
    expect(ship.ship_length("carrier")).to eq(5)
    expect(ship.ship_length("battleship")).to eq(4)
    expect(ship.ship_length("sumbarine")).to eq(3)
    expect(ship.ship_length("patrol")).to eq(2)
  end

  it "place coordinate on board" do
    ship = Grid.new
    expect(ship.coord_h("a1", "carrier")).to eq(4)
  end

  it "place coordinates horizontally" do
    ship = Grid.new
    expect(ship.switch_to_true("a1", "patrol")).to eq({:a=>[false, true, true, false, false, false, false, false, false, false], :b=>[false, false, false, false, false, false, false, false, false, false],
      :c=>[false, false, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
        :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
          :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
            :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
  end

  it "place coordinates vertically" do
    ship = Grid.new
    expect(ship.switch_to_true_v("a1", "sumbarine")).to eq({:a=>[false, true, false, false, false, false, false, false, false, false], :b=>[false, true, false, false, false, false, false, false, false, false],
      :c=>[false, true, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
        :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
          :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
            :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
  end

  it "place coordinates vertically and horizontally" do
    ship = Grid.new
    expect(ship.switch_to_true("a1", "sumbarine")).to eq({:a=>[false, true, true, true, false, false, false, false, false, false], :b=>[false, false, false, false, false, false, false, false, false, false],
      :c=>[false, false, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
        :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
          :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
            :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
    expect(ship.switch_to_true_v("c3", "patrol")).to eq({:a=>[false, true, true, true, false, false, false, false, false, false], :b=>[false, false, false, false, false, false, false, false, false, false],
              :c=>[false, false, false, true, false, false, false, false, false, false],:d=>[false, false, false, true, false, false, false, false, false, false],
                :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
                  :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
                    :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
  end

  it "coordinates cannot overlap" do
    ship = Grid.new
    expect(ship.switch_to_true_v("a1", "sumbarine")).to eq({:a=>[false, true, false, false, false, false, false, false, false, false], :b=>[false, true, false, false, false, false, false, false, false, false],
          :c=>[false, true, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
            :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
              :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
                :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
    expect(ship.switch_to_true_v("a1", "carrier")).to eq({:a=>[false, true, false, false, false, false, false, false, false, false], :b=>[false, true, false, false, false, false, false, false, false, false],
          :c=>[false, true, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
            :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
              :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
                :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
    expect(ship.switch_to_true("a1", "patrol")).to eq({:a=>[false, true, false, false, false, false, false, false, false, false], :b=>[false, true, false, false, false, false, false, false, false, false],
                      :c=>[false, true, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
                        :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
                          :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
                            :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
  end

  it "display hit marker '@' if coordinates match" do
    ship = Grid.new
    expect(ship.switch_to_true("a1", "sumbarine")).to eq({:a=>[false, true, true, true, false, false, false, false, false, false], :b=>[false, false, false, false, false, false, false, false, false, false],
          :c=>[false, false, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
            :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
              :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
                :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
    expect(ship.switch_to_true_g("a1")).to eq({:a=>[false, "@", true, true, false, false, false, false, false, false], :b=>[false, false, false, false, false, false, false, false, false, false],
                      :c=>[false, false, false, false, false, false, false, false, false, false],:d=>[false, false, false, false, false, false, false, false, false, false],
                        :e=>[false, false, false, false, false, false, false, false, false, false],:f=>[false, false, false, false, false, false, false, false, false, false],
                          :g=>[false, false, false, false, false, false, false, false, false, false],:h=>[false, false, false, false, false, false, false, false, false, false],
                            :i=>[false, false, false, false, false, false, false, false, false, false],:j=>[false, false, false, false, false, false, false, false, false, false]})
  end

end
