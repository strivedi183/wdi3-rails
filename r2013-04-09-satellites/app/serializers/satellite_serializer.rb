class SatelliteSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :distance, :diameter, :period
  has_many :satellites
  embed :ids, include: true
end
