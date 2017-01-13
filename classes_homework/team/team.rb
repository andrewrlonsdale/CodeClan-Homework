class Team

  attr_reader :team_name
  attr_accessor :team_players
  attr_accessor :coach
 
  

  

  def initialize(team_name, team_players, coach)
    @team_name = team_name
    @team_players = team_players
    @coach = coach
    @test_score = 0
  end

  def add_player(player)
    @team_players.push(player)
  end

  def include_player(player)
    @team_players.include? (player)
  end

  def score(result)
    if result == "win"
      @test_score += 5
    else
      @test_score
    end
  end




end