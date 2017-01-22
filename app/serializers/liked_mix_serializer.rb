class LikedMixSerializer < ActiveModel::Serializer
  attributes :id, :mix_id, :dj_id


  has_one :dj
  has_one :mix
end
