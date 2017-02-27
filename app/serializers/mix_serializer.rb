class MixSerializer < ActiveModel::Serializer
  attributes :id, :title, :dj_id, :image

  has_one :dj
  has_many :liked_mixes


end
