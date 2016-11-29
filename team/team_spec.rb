require('minitest/autorun')
require_relative('team')

class Team_Spec < MiniTest::Test 


  def test_team_name
    team = Team.new("Clan",["Alpha", "Bravo","Charlie", "Delta"],"Carter")
    assert_equal("Clan", team.team_name)
  end

  def test_team_players
    team = Team.new("Clan",["Alpha", "Bravo","Charlie", "Delta"],"Carter")
    assert_equal(["Alpha", "Bravo","Charlie", "Delta"], team.team_players)
  end

  def test_coach
    team = Team.new("Clan",["Alpha", "Bravo","Charlie", "Delta"], "Carter")
    assert_equal("Carter", team.coach)
  end

  def test_coach_name_change
    team = Team.new("Clan",["Alpha", "Bravo","Charlie", "Delta"], "Carter")
    team.coach = "Bob"
    assert_equal("Bob", team.coach)
  end

  def test_add_player
    team = Team.new("Clan",["Alpha", "Bravo","Charlie", "Delta"], "Carter")
    team.add_player("Echo")
    assert_equal(["Alpha", "Bravo","Charlie", "Delta", "Echo"], team.team_players)
  end


  def test_check_players

    
  end
end
