class Mix < ApplicationRecord
  belongs_to :dj
  has_many :liked_mixes
end
