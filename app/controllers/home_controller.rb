class HomeController < ApplicationController

  def index
    @matches = Match.all.asc("match_date")
    ranking_service = RankingService.new
    @ranking = ranking_service.calculate
  end
end