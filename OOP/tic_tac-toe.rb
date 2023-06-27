class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def mark(board, position)
    board.grid[position-1] = @name
  end
end

class Board
  attr_accessor :grid

  def initialize
    @grid = Array.new(9, '*')
  end

  def display_grid
    @grid.each_with_index do |value, index|
      print "#{value} \t"
      if index == 2 || index == 5
        puts
      end
    end
    puts
  end

  def check_vertical
    if (@grid[0] == @grid[1] && @grid[1] == @grid[2] && @grid[0] != '*') || (@grid[3] == @grid[4] && @grid[4] == @grid[5] && @grid[3] != '*') || (@grid[6] == @grid[7] && @grid[7] == @grid[8] && @grid[6] != '*')
      return true
    end

    false
  end

  def check_horizontal
    if (@grid[0] == @grid[3] && @grid[3] == @grid[6] && @grid[0] != '*') || (@grid[1] == @grid[4] && @grid[4] == @grid[7] && @grid[1] != '*') || (@grid[2] == @grid[5] && @grid[5] == @grid[8] && @grid[2] != '*')
      return true
    end

    false
  end

  def check_diagonal
    if (@grid[0] == @grid[4] && @grid[4] == @grid[8] && @grid[0] != '*') || (@grid[2] == @grid[4] && @grid[4] == @grid[6] && @grid[2] != '*')
      return true
    end

    false
  end

  def check_for_winner
    if check_vertical || check_horizontal || check_diagonal
      return true
    end

    false
  end
end

board = Board.new
player1 = Player.new('X')
player2 = Player.new('O')
current_player = player1
board.display_grid
puts 'Player1 (X) : Player2 (O)'
win = false
until win
  puts "Enter position #{current_player.name}: "
  position = gets.chomp.to_i
  current_player.mark(board, position)
  board.display_grid
  if board.check_for_winner
    win = true
    puts "#{current_player.name} wins!"
  else
    puts 'keep playing'
    current_player = current_player.name == 'X' ? player2 : player1
  end
end
