class LeagueSession < ApplicationRecord
  belongs_to :season
  validates :gameone, numericality: { only_integer: true, in: 0..300 }, allow_blank: true
  validates :gametwo, numericality: { only_integer: true, in: 0..300 }, allow_blank: true
  validates :gamethree, numericality: { only_integer: true, in: 0..300 }, allow_blank: true
end
