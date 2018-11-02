class TicTacToe

def intialize(board = nil)
  @board = board || Array.new(9, " ")
  end

WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #left column
  [1, 4, 7], #middle column
  [2, 5, 8], #right column
  [0, 4, 8], #topleft to botright diag
  [2, 4, 6] #topright to botleft diag
]

def display_board(board)
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

def input_to_index(input)
 input = input.to_i
 if input.between?(1,9)
    input -= 1
  else
    input = -1
    end
  end

def move(board, index, current_player)
  board[index] = current_player
  end
def position_taken?(board, index)
    board[index] != " " && board[index] != ""
  end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
  end

end
