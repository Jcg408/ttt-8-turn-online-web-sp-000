def turn(board)
  puts "Please enter 1-9:"

  index = gets.strip
  input_to_index(index)
  if valid_move? == true
    move(board, index, value)
 end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  position_index = input.to_i - 1
  if position_index
end

def valid_move? (board, index)
  index.between?(0,8)  && !position_taken?(board, index)
end

def position_taken? (board, index)
  if board[index].include?("X" || "O")
    true
  end
  
end

def move(board, index, value='X')
  board[index] = value
end

