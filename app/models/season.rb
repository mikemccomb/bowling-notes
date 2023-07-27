class Season < ApplicationRecord
  has_many :league_sessions

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :number_sessions, numericality: { only_integer: true, in: 1..52 }, presence: true
end
