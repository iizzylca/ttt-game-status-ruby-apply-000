# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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

def move?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    board[0] == board[1] && board[1] == board[2] && board[0] != " "
  end
end
