class TicketSerializer < ActiveModel::Serializer
  attributes :id, :price
  belongs_to :production
  belongs_to :user

  def price 
    "€#{'%.2f' % (self.object.price*1.06)}"
  end 


end
