class Player
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String

  has_many :matches, as: :won_matches
  has_many :matches, as: :lost_matches

end
