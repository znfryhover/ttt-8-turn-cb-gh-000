# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "x" || board[index] == "O" || board[index] == "o"
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !(position_taken?(board, index))
    return true
  else
    return false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def turn
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
end
