class Workout < ApplicationRecord
  has_many :exercises

  validates :workout, presence:true
end
