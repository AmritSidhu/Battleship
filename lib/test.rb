def grid_layout

  @board = {
  a: [false, false, false, false, false, false, false, false, false, false],
  b: [false, false, false, false, false, false, false, false, false, false],
  c: [false, false, false, false, false, false, false, false, false, false],
  d: [false, false, false, false, false, false, false, false, false, false],
  e: [false, false, false, false, false, false, false, false, false, false],
  f: [false, false, false, false, false, false, false, false, false, false],
  g: [false, false, false, false, false, false, false, false, false, false],
  h: [false, false, false, false, false, false, false, false, false, false],
  i: [false, false, false, false, false, false, false, false, false, false],
  j: [false, false, false, false, false, false, false, false, false, false]
}


  ships = {"carrier"    => 5,
           "battleship" => 4,
           "sumbarine"  => 3,
           "patrol"     => 2}

  puts "Ship (carrier, battleship, sumbarine, patrol): "
  user_ship = $stdin.gets.chomp.downcase
  length = ships[user_ship]
  puts length

  puts "Enter row followed by column (eg. a1): "
  input = $stdin.gets.chomp.downcase
  hello = input.chars
  user_row = hello[0].to_s
  user_column = hello[1].to_i
  puts user_row
  puts user_column
=begin
  a = @board.select{ |k, v| k[user_row] }
  puts a

  puts @board[user_row.to_sym][user_column] = true
  (length-1).times do
    puts @board[user_row.to_sym][user_column += 1 ] = true
  end
=end

letters = ("#{user_row}"..'j').to_a

  if @board[user_row.to_sym][user_column] == false
    @board[user_row.to_sym][user_column] = true
    length.times do
    puts @board[letters.shift.to_sym][user_column] = true
    end
  else puts "invalid"
end

puts "enter coord: "
input = $stdin.gets.chomp
geuss = input.chars
row_geuss = geuss[0].to_s
column_geuss = geuss[1].to_i
if @board[row_geuss.to_sym][column_geuss] == true
  puts "Hit!"
  puts @board[row_geuss.to_sym][column_geuss] = "@"
else puts "Miss!"
  @board[row_geuss.to_sym][column_geuss] = "o"
end

  puts '   0 1 2 3 4 5 6 7 8 9'
  @board.each do |key, row|
    string = ''
    row.each do |v|
      if v == true
        string += ' x'
      elsif v == "@"
        string += " @"
      elsif v == "o"
        string += " o"
      else v == false
        string += ' .'
      end
    end
    puts key.to_s + ' ' + string
    end

end

grid_layout
