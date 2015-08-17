require 'pry'

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game        # iNHERITS Game Class
  def rules_of_play
    #rules of play
  end
end


binding.pry