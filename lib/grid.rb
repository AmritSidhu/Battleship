require './ship.rb'

class Grid

  attr_accessor :board, :ships

  def initialize
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
    j: [false, false, false, false, false, false, false, false, false, false]}

   @new_ships = Boat.new
  end

  def ship_length(user_ship)
    length = @new_ships.ships[user_ship]
  end

  def coord_h(input, input2)
    split_input = input.chars
    user_row = split_input[0].to_s
    user_column = split_input[1].to_i

    if @board[user_row.to_sym][user_column] == false
      @board[user_row.to_sym][user_column] = true
      (ship_length(input2)-1).times do
        @board[user_row.to_sym][user_column += 1 ] = true
      end
    else @board[user_row.to_sym][user_column..9] == true
      puts "DFDSF"
    end
  end

  def coord_v(input, input2)
    split_input = input.chars
    user_row = split_input[0].to_s
    user_column = split_input[1].to_i
    letter = ("#{user_row}"..'j').to_a

    if @board[user_row.to_sym][user_column] == false
      @board[user_row.to_sym][user_column] = true
        (ship_length(input2)).times do
          @board[letter.shift.to_sym][user_column] = true
        end
    else puts "Invalid"
    end
  end

  def switch_to_true
    #coord_h(input, input2)
    puts '   0 1 2 3 4 5 6 7 8 9'
    @board.each do |key, row|
      string = ''
      row.each do |v|
        if v == true
          string += ' x'
        else v == false
          string += ' .'
        end
      end
      puts key.to_s + ' ' + string
    end
  end

  def counting
    @board.each do |x,y|
      a = y
      b = Hash.new(0)
        a.each do |v|
          b[v] += 1
        end
        b.each do |k,v|
          if k == "@" && v == 2
            puts "WINNER!"
          end
        end
    end
  end

  def user_geuss(input)
    geuss = input.chars
    row_geuss = geuss[0].to_s
    column_geuss = geuss[1].to_i
    if @board[row_geuss.to_sym][column_geuss] == true
      puts "Hit!"
      @board[row_geuss.to_sym][column_geuss] = "@"
    else puts "Miss!"
      @board[row_geuss.to_sym][column_geuss] = "o"
    end
  end

  def switch_to_true_g#(input)
    #user_geuss(input)
    puts '   0 1 2 3 4 5 6 7 8 9'
    @board.each do |key, row|
      string = ''
      row.each do |v|
        if v == true
          string += ' .'
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

end
