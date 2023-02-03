class UserTicketSerializer < ActiveModel::Serializer
  attributes :id, :price, :production
  
  def production
    {title: self.object.production.title}
  end 

  def price 
    "€#{'%.2f' % (self.object.price*1.06)}"
  end 
end
