require './grid.rb'

class GameScript

def initialize
    @game = Grid.new
    @game2 = Grid.new
    @gameA = Grid.new
    @gameB = Grid.new
end

def space
  65.times do
    puts ""
  end
end
def sleeping
  sleep(3)
end

def carrierP1
    puts "Player 1 - Were do you want to place carrier(5): "
    puts "Enter orientation (eg| h, v): "
    p1_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p1_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p1_coordinate[1].to_i + 5 <= 9) && (p1_orientation == "h") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1]))
      @game.coord_h(p1_coordinate, "carrier")
      @game.switch_to_true
    elsif (letters.include?(p1_coordinate[0].next.next.next.next)) && (p1_orientation == "v") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1]))
      @game.coord_v(p1_coordinate, "carrier")
      @game.switch_to_true
    else puts "Retry!"
      carrierP1
    end
end
def battleshipP1
    puts "Player 1 - Were do you want to place battleship(4): "
    puts "Enter orientation (eg| h, v): "
    p1_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p1_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p1_coordinate[1].to_i + 4 <= 9) && (p1_orientation == "h") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1])) 
      @game.coord_h(p1_coordinate, "battleship")
      @game.switch_to_true
    elsif (letters.include?(p1_coordinate[0].next.next.next)) && (p1_orientation == "v") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1]))
      @game.coord_v(p1_coordinate, "battleship")
      @game.switch_to_true
    else puts "Retry!"
      battleshipP1
    end
end
def sumbarineP1
    puts "Player 1 - Were do you want to place sumbarine(3): "
    puts "Enter orientation (eg| h, v): "
    p1_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p1_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p1_coordinate[1].to_i + 3 <= 9) && (p1_orientation == "h") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1]))
      @game.coord_h(p1_coordinate, "sumbarine")
      @game.switch_to_true
    elsif (letters.include?(p1_coordinate[0].next.next)) && (p1_orientation == "v") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1]))
      @game.coord_v(p1_coordinate, "sumbarine")
      @game.switch_to_true
    else puts "Retry!"
      sumbarineP1
    end
end
def patrolP1
    puts "Player 1 - Were do you want to place patrol(2): "
    puts "Enter orientation (eg| h, v): "
    p1_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p1_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p1_coordinate[1].to_i + 2 <= 9) && (p1_orientation == "h") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1]))
      @game.coord_h(p1_coordinate, "patrol")
      @game.switch_to_true
    elsif (letters.include?(p1_coordinate[0].next)) && (p1_orientation == "v") && (letters.include?(p1_coordinate[0]) && numbers.include?(p1_coordinate[1]))
      @game.coord_v(p1_coordinate, "patrol")
      @game.switch_to_true
    else puts "Retry!"
      patrolP1
    end
end

def carrierP2
    puts "Player 2 - Were do you want to place carrier(5): "
    puts "Enter orientation (eg| h, v): "
    p2_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p2_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p2_coordinate[1].to_i + 5 <= 9) && (p2_orientation == "h") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_h(p2_coordinate, "carrier")
      @game2.switch_to_true
    elsif (letters.include?(p2_coordinate[0].next.next.next.next)) && (p2_orientation == "v") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_v(p2_coordinate, "carrier")
      @game2.switch_to_true
    else puts "Retry!"
      carrierP2
    end
end
def battleshipP2
    puts "Player 2 - Were do you want to place battleship(4): "
    puts "Enter orientation (eg| h, v): "
    p2_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p2_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p2_coordinate[1].to_i + 4 <= 9) && (p2_orientation == "h") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_h(p2_coordinate, "battleship")
      @game2.switch_to_true
    elsif (letters.include?(p2_coordinate[0].next.next.next)) && (p2_orientation == "v") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_v(p2_coordinate, "battleship")
      @game2.switch_to_true
    else puts "Retry!"
      battleshipP2
    end
end
def sumbarineP2
    puts "Player 2 - Were do you want to place sumbarine(3): "
    puts "Enter orientation (eg| h, v): "
    p2_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p2_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p2_coordinate[1].to_i + 3 <= 9) && (p2_orientation == "h") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_h(p2_coordinate, "sumbarine")
      @game2.switch_to_true
    elsif (letters.include?(p2_coordinate[0].next.next)) && (p2_orientation == "v") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_v(p2_coordinate, "sumbarine")
      @game2.switch_to_true
    else puts "Retry!"
      sumbarineP2
    end
end
def patrolP2
    puts "Player 2 - Were do you want to place patrol(2): "
    puts "Enter orientation (eg| h, v): "
    p2_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p2_coordinate = $stdin.gets.chomp.downcase

    letters = ("a"..'j').to_a
    numbers = ("0".."10").to_a

    if (p2_coordinate[1].to_i + 2 <= 9) && (p2_orientation == "h") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_h(p2_coordinate, "patrol")
      @game2.switch_to_true
    elsif (letters.include?(p2_coordinate[0].next)) && (p2_orientation == "v") && (letters.include?(p2_coordinate[0]) && numbers.include?(p2_coordinate[1]))
      @game2.coord_v(p2_coordinate, "patrol")
      @game2.switch_to_true
    else puts "Retry!"
      patrolP2
    end
end

def player1
  space
  puts "Return to player 1"
  sleeping
  space
  puts""
  puts"      <Your Board>"
  @game.switch_to_true
  puts""
  puts"   <Opponents Board>"
  @game2.switch_to_true_g
  puts "Enter a coordinate you wish to attack (eg| a1): "
  p1_geuss = $stdin.gets.chomp.downcase

  if @game2.user_geuss(p1_geuss) == true
    @gameA.switch_to_true_g
  end
  @game2.switch_to_true_g

  @game2.counting

  sleeping
  space
end
def player2
  puts "Return to player 2"
  sleeping
  space
  puts""
  puts"      <Your Board>"
  @game2.switch_to_true
  puts""
  puts"   <Opponents Board>"
  @game.switch_to_true_g
  puts "Enter a coordinate you wish to attack (eg| a1): "
  p2_geuss = $stdin.gets.chomp.downcase

  if @game.user_geuss(p2_geuss) == true
    @gameB.switch_to_true_g
  end
  @game.switch_to_true_g

  @game.counting

  sleeping
  space
end

end

a = GameScript.new

a.carrierP1
a.battleshipP1
#a.sumbarineP1
#a.patrolP1
a.sleeping
a.space
a.carrierP2
a.battleshipP2
#a.sumbarineP2
#a.patrolP2
a.sleeping
100.times do
a.player1
a.player2
end
