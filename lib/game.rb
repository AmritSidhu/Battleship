require './grid.rb'

game = Grid.new
game2 = Grid.new
gameA = Grid.new
gameB = Grid.new

  game = Grid.new
  4.times do
    puts "Player 1 enter single ship (eg| carrier(5), battleship(4), sumbarine(3), patrol(2)): "
    p1_ship = $stdin.gets.chomp.downcase
    puts "Enter orientation (eg| h, v): "
    p1_orientation = $stdin.gets.chomp.downcase
    puts "Enter coordinate (eg| a1)"
    p1_coordinate = $stdin.gets.chomp.downcase

    if p1_orientation == "h"
      game.coord_h(p1_coordinate, p1_ship)
    elsif p1_orientation == "v"
      game.coord_v(p1_coordinate, p1_ship)
    else puts "Retry!"
    end

    game.switch_to_true
  end

60.times do
  puts ""
end
puts "Player 2's turn to place ships!"

4.times do
  puts "Player 2 enter single ship (eg| carrier(5), battleship(4), sumbarine(3), patrol(2)): "
  p2_ship = $stdin.gets.chomp.downcase
  puts "Enter orientation (eg| h, v): "
  p2_orientation = $stdin.gets.chomp.downcase
  puts "Enter coordinate (eg| a1)"
  p2_coordinate = $stdin.gets.chomp.downcase

  if p2_orientation == "h"
    game2.coord_h(p2_coordinate, p2_ship)
  elsif p2_orientation == "v"
    game2.coord_v(p2_coordinate, p2_ship)
  else puts "Retry!"
  end
  game2.switch_to_true
end

60.times do
      puts ""
    end

  while game.counting || game2.counting == false
  puts "Return to player 1"
  sleep(4)
  60.times do
        puts ""
      end
  puts""
  puts"      <Your Board>"
  game.switch_to_true
  puts""
  puts"   <Opponents Board>"
  game2.switch_to_true_g
  puts "Enter a coordinate you wish to attack (eg| a1): "
  p1_geuss = $stdin.gets.chomp.downcase

  if game2.user_geuss(p1_geuss) == true
    gameA.switch_to_true_g
  end
  game2.switch_to_true_g

  sleep(4)
  60.times do
      puts ""
    end

  puts "Return to player 2"

  sleep(4)
  60.times do
      puts ""
    end

  puts""
  puts"      <Your Board>"
  game2.switch_to_true
  puts""
  puts"   <Opponents Board>"
  game.switch_to_true_g
  puts "Enter a coordinate you wish to attack (eg| a1): "
  p2_geuss = $stdin.gets.chomp.downcase

  if game.user_geuss(p2_geuss) == true
    gameB.switch_to_true_g
  end
  game.switch_to_true_g

  sleep(4)
  60.times do
      puts ""
  end
end
