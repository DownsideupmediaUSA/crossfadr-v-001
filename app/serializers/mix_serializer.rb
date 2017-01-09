class MixSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_one :dj
  has_many :liked_mixes

end
