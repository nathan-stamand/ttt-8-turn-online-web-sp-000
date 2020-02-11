def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif board[index] == nil
    return false
  elsif !position_taken?(board, index)
    return true
  end
end


def position_taken?(board, index)
  if board[index] == ' '
    return false
  elsif board[index] == ''
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == 'X'
    return true;
  elsif board[index] == 'O'
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(array, index, character = 'X')
  array[index] = character
end

def turn(board)

  puts "Please enter 1-9:"

  input = gets.strip

  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  
  display_board(board)
  
end