class Player
  attr_reader :player_throw, :server_throw

  WINNING_CONDITIONS = {rock: "paper", paper: "scissors", scissors: "rock"}

  def initialize(player_throw)
    @player_throw = player_throw.to_s
    @server_throw = WINNING_CONDITIONS.keys.sample.to_s
  end

  def print_result(result)
    "The server threw #{server_throw}.  You #{result}!"
  end

  def compare
    if server_throw == player_throw
      print_result("tied")
    elsif WINNING_CONDITIONS[player_throw.to_sym] == server_throw
      print_result("lost")
    else
      print_result("won")
    end
  end

end
