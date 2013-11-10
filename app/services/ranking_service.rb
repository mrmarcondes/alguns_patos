class RankingService
  @ranking = Array.new

  def self.calculate
    Player.all.each do |player|
      player_statistic = PlayerStatistic.new(player: player,
                                            won_matches: won_matches(player),
                                            lost_matches: lost_matches(player),
                                            total_matches: total_matches(player),
                                            percentage_of_wins: percentage_of_wins(player))
      @ranking.push player_statistic
    end

    self.order_by_percentage_of_wins
  end


  private
    def self.won_matches(player)
      won_matches = Match.where(winner: player).count
    end

    def self.lost_matches(player)
      lost_matches = Match.where(loser: player).count
    end

    def self.total_matches(player)
      total_matches = self.won_matches(player) + self.lost_matches(player)
    end

    def self.percentage_of_wins(player)
      percentage_of_wins = (self.won_matches(player).to_f / self.total_matches(player).to_f) * 100.0
      return percentage_of_wins.round(2)
    end

    def self.order_by_percentage_of_wins
      @ranking.sort!{|x,y| y.percentage_of_wins <=> x.percentage_of_wins}
    end
end
