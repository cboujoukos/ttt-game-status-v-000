# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |winning_combo|
    winning_combo.all?{|index| (board[index] == "X")||(board[index] == "O")}
      
    

    #win_index_1 = winning_combo[0]
    #win_index_2 = winning_combo[1]
    #win_index_3 = winning_combo[2]

    #position_1 = board[win_index_1]
    #position_2 = board[win_index_2]
    #position_3 = board[win_index_3]

    #if position_1 == "X" && position_2 == "X" && position_3 == "X"
      #return winning_combo
    #elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      #return winning_combo
    #else
      #return false
    #end
  end
end
