class TicTacToe
def initialize
  @board = Array.new(9, " ")
end
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end
def input_to_index(user_input) #ovo nisam znao
  user_input.to_i - 1
end
def move(index, token = "X")
  @board[index] = token
end
def position_taken?(index)
  if @board[index] == " " || @board[index] == "" || @board[index] == nil
    return false
  else
    return true
  end
end
def valid_move?(index)
  if index.between?(0,8) && !position_taken?(index)
    return true
  else
    return false
  end
end
 def turn
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(index)
     move(index, token = "X")
     display_board
#     turn
   else
     puts "Please enter 1-9:"
     display_board
 end
def self.turn_count #i ovo nisam znao
  counter = 0
  @board.each do |count|
    if count = "X" || count = "O"
      counter += 1
    end
  end
  counter
end
def current_player
  turn_count.even? || turn_count == 0 ? "X" : "O"
end

def won?
  WIN_COMBINATIONS.each do |win_combo|
    win_one = win_combo[0]
    win_two = win_combo[1]
    win_three = win_combo[2]
    if @board[win_one] == "X" && @board[win_two] == "X" && @board[win_three] == "X"
      return true
    else
      @board[win_one] == "O" && @board[win_two] == "O" && @board[win_three] == "O"
      return true
    else
      return false
    end
    win_combo
  end

end






end
end
