class Match
  include Mongoid::Document
  include Mongoid::Timestamps

  field :score, type: String
  field :match_date, type: Date

  belongs_to :winner, class_name: "Player"
  belongs_to :loser, class_name: "Player"
end
