class TicTacToe
  def initialize(board)
    @board = Array.new(9, " ")
  end
  
  WIN_COMBINATIONS = [
  #horizontal
  [0, 1, 2], 
  [3, 4, 5], 
  [6, 7, 8],
  
  #vertical
  [0, 3, 6], 
  [1, 4, 7], 
  [2, 5, 8], 
  
  #diagonal
  [0, 4, 8], 
  [2, 4, 6],
  ]
  
  def display_board(board)
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    return user_input.to_i - 1
  end
  
  def move(index, current_player = "X")
    @board[index] = current_player
  end
  
  def position_taken?(board, location)
    if(@board[location] != " " && @board[location] != "")
      return true 
    else 
      return false
    end
  end
  
  


end 