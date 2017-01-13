class Workout < ApplicationRecord
  has_many :exercises, dependent: :destroy

  validates :workout, presence:true
end
