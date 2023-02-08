class UserSerializer < ActiveModel::Serializer
  attributes :name, :id, :email
  has_many :tickets, serializer: UserTicketsSerializer
  #has_many :productions
end
