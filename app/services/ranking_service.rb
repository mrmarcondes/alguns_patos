class RankingService

  def initialize
    @ranking = Array.new
  end

  def calculate
    Player.all.each do |player|
      player_statistic = PlayerStatistic.new(player: player,
                                            won_matches: won_matches(player),
                                            lost_matches: lost_matches(player),
                                            total_matches: total_matches(player),
                                            percentage_of_wins: percentage_of_wins(player))
      @ranking.push player_statistic
    end

    order_by_percentage_of_wins
  end


  private
    def won_matches(player)
      won_matches = Match.where(winner: player).count
    end

    def lost_matches(player)
      lost_matches = Match.where(loser: player).count
    end

    def total_matches(player)
      total_matches = won_matches(player) + lost_matches(player)
    end

    def percentage_of_wins(player)
      percentage_of_wins = (won_matches(player).to_f / total_matches(player).to_f) * 100.0
      return percentage_of_wins.round(2)
    end

    def order_by_percentage_of_wins
      @ranking.sort!{|x,y| y.percentage_of_wins <=> x.percentage_of_wins}
    end
end
