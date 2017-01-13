class Rps

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    if @player1 == rock and @player2 == scissors
      return 'Rock beats scissors, player 1 wins'

    elsif @player1 == paper && @player2 == rock
      return 'paper beats rock, player 1 wins'

    elsif @player1 == scissors && @player2 == paper
      return 'scissors beats paper, player 1 wins'

    elsif @player1 == paper && @player2 == scissors
      return 'scissors beats paper, player 2 wins'

    elsif @player1 == rock && @player2 == paper
      return 'paper beats rock, player 2 wins'

    else @player1 == scissors && @player2 == rock
      return 'Rock beats scissors, player 2 wins'
    end
  end
end