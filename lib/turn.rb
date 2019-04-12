def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  moves = nil
  if index > 8
    moves = false
  elsif !(board[index] == " " || board[index] == "" ||board[index] == nil)
    moves = false
  else
    moves = true
  end
  moves
end

def input_to_index (input)
  num = input.to_i
  num -= 1
end

def move (board, index, player = "X")
  board[index] = player
end

def turn (board)
  puts "Please enter 1-9:"
  if valid_move? (board, index)
    move (board, index, player = 'X')
  else
    turn
  end
end

  