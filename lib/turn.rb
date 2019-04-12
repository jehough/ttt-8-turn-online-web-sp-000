def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  move = nil
  if index > 8
    move = false
  elsif !(board[index] == " " || board[index] == "" ||board[index] == nil)
    move = false
  else
    move = true
  end
  move
end

def move