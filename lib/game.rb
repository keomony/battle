class Game
  attr_reader :current_player, :players

  def initialize(p1,p2)
    @players = [p1, p2]
    @current_player = @players.first
  end

  def attack(player)
    player.receive_damage
    switch
  end

  def switch
  @current_player = @players.rotate!.first
  end

end
