class HomeController < ApplicationController

  def index
    @matches = Match.all.asc("match_date")
    @ranking = RankingService.calculate
  end
end