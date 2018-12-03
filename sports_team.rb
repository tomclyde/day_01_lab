class SportsTeam

  attr_accessor :team_name, :players, :coach, :total_points

  def initialize(team_name, players, coach, total_points)
    @team_name = team_name
    @players = players
    @coach = coach
    @total_points = total_points
  end

  def add_new_player(name)
    @players.push(name)
  end

  def check_player_exists(name)
    for player in @players
      if player == name
        return true
      end
    end
    return false
  end

  def added_up_points(result)
    if result == "Win"
      @total_points += 1
    end
    return @total_points
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

end
