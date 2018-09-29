# - AI Logic -
# 1. Check to see if the computer has a winning combo with two tokens and one empty space
# --> If yes: put the token in the empty space
# 2. Check to see if the opponent has a winning combo with two tokens and one empty space
# --> If yes: put the token in the empty space
# 3. Else, check if the middle space is open
# 4. Else, check if a corner space is open
# 5. Else, choose another space at random

module Players 
  class Computer < Player 
    attr_reader :board 
    WIN_COMBINATIONS= [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [6, 4, 2]
    ]
    
    def move(board)
      @board = board 
      
      opponent_token 
      
      if check_for_winning_move != nil 
        number = check_for_winning_move
      elsif block_opponent != nil
        number = block_opponent
      else
        number = free_move
      end
      number += 1
      return number.to_s #is returning the non-indexed number
    end
    
    def opponent_token
      if self.token == "X"
        opponent_token = "O"
      else 
        opponent_token = "X" 
      end 
    end 
  end 