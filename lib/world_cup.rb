class WorldCup
  attr_reader :year,
              :teams
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    @teams.flat_map do |team|
      if team.eliminated? == false
        team.players_by_position(position)
      end
    end.compact
  end

  def all_players_by_position
    all_players = Hash.new{|hash,key| hash[key]=[]}
    @teams.each do |team|
      team.players.each do |player|
        all_players[player.position] << player
      end
    end
    all_players
  end
end
