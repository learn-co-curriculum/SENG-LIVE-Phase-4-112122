class CastMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :role, :pet
  belongs_to :production

 def pet
  "cat"
 end 

 def production
  {title: self.object.production.title}
 end 
end
