class Dj < ApplicationRecord
  has_many :mixes
  has_many :liked_mixes

end
