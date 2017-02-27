require './ship.rb'
require './board.rb'

class Grid

  attr_accessor :board, :ships

  def initialize
    @new_board = Board.new
    @new_ships = Boat.new
  end

  def ship_length(user_ship)
    length = @new_ships.ships[user_ship]
  end

  def coord_h(input, input2)
    split_input = input.chars
    user_row = split_input[0].to_s
    user_column = split_input[1].to_i

    if @new_board.board[user_row.to_sym][user_column] == false
      @new_board.board[user_row.to_sym][user_column] = true
      (ship_length(input2)-1).times do
        @new_board.board[user_row.to_sym][user_column += 1 ] = true
      end
    elsif @new_board.board[user_row.to_sym][user_column] == true
    end
  end

  def coord_v(input, input2)
    split_input = input.chars
    user_row = split_input[0].to_s
    user_column = split_input[1].to_i
    letter = ("#{user_row}"..'j').to_a

    if @new_board.board[user_row.to_sym][user_column] == false
      @new_board.board[user_row.to_sym][user_column] = true
        (ship_length(input2)).times do
          @new_board.board[letter.shift.to_sym][user_column] = true
        end
    elsif @new_board.board[user_row.to_sym][user_column] == true
    end
  end

  def switch_to_true
    #coord_h(input, input2)
    puts '   0 1 2 3 4 5 6 7 8 9'
    @new_board.board.each do |key, row|
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
    @new_board.board.each do |x,y|
      a = y
      b = Hash.new(0)
        a.each do |v|
          b[v] += 1
        end
        b.each do |k,v|
          if k == "@" && v == 2
            puts "WINNER!"*2000
            exit
          end
        end
    end
  end

  def user_geuss(input)
    geuss = input.chars
    row_geuss = geuss[0].to_s
    column_geuss = geuss[1].to_i
    if @new_board.board[row_geuss.to_sym][column_geuss] == true
      puts "Hit!"
      @new_board.board[row_geuss.to_sym][column_geuss] = "@"
    else puts "Miss!"
      @new_board.board[row_geuss.to_sym][column_geuss] = "o"
    end
  end

  def switch_to_true_g#(input)
    #user_geuss(input)
    puts '   0 1 2 3 4 5 6 7 8 9'
    @new_board.board.each do |key, row|
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
