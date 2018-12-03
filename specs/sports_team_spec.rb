require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < Minitest::Test

  def setup
    @sports_team = SportsTeam.new("Team A", ["Chris", "Tom", "Stephen"], "Keith", 0)
  end

  def test_team_name
    assert_equal("Team A", @sports_team.team_name)
  end

  def test_players
    assert_equal(["Chris", "Tom", "Stephen"], @sports_team.players)
  end

  def test_coach
    assert_equal("Keith", @sports_team.coach)
  end

  def test_set_coach
    @sports_team.coach = "Colin"
    assert_equal("Colin", @sports_team.coach)
  end

  def test_add_new_player
    @sports_team.add_new_player("James")
    assert_equal("James", @sports_team.players[-1])
  end

  def test_check_player_exists
    assert_equal(true, @sports_team.check_player_exists("Tom"))
  end

  def test_total_points
    assert_equal(0, @sports_team.total_points)
  end

  def test_team_result__win
    @sports_team.added_up_points("Win")
    assert_equal(1, @sports_team.total_points)
  end

  def test_team_result__lose
    @sports_team.added_up_points("Lose")
    assert_equal(0, @sports_team.total_points)
  end

end
