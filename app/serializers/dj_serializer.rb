class DjSerializer < ActiveModel::Serializer
  attributes :id, :dj_name

  has_many :mixes
  has_many :liked_mixes

end
