class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :director, :genre, :description, :ongoing, :budget
  has_many :cast_members
end
