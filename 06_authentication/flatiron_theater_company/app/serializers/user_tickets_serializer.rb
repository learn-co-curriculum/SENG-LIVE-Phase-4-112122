class UserTicketsSerializer < ActiveModel::Serializer
  attributes :id, :price, :production

  def production
    self.object.production.title
  end 
 
  def price 
    "$#{'%.2f'%self.object.price}"
  end 
end
