class Match
  include Mongoid::Document
  include Mongoid::Timestamps

  field :score, type: String
  field :match_date, type: Date

  belongs_to :winner, class_name: "Player"
  belongs_to :loser, class_name: "Player"

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


end
