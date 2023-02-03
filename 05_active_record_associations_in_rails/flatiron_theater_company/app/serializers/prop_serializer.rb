class PropSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :location
  has_one :production
end
