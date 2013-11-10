class PlayerStatistic

  attr_reader :player, :won_matches, :lost_matches, :total_matches, :percentage_of_wins

  def initialize(options={})
    @player = options[:player]
    @won_matches = options[:won_matches]
    @lost_matches = options[:lost_matches]
    @total_matches = options[:total_matches]
    @percentage_of_wins = options[:percentage_of_wins]
  end
end
