class Player
  attr_reader :player_info,
              :name,
              :position
  def initialize(player_info)
    @player_info = player_info
    @name = player_info[:name]
    @position = player_info[:position]
  end
end
