class HomeController < ApplicationController

  def index
    @matches = Match.all.asc("match_date")
    @players = Player.all
  end
end