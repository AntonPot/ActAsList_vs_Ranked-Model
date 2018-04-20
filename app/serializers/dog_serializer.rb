class DogSerializer < ActiveModel::Serializer
  attributes :name, :position, :id
  attribute :owner do
    object.owner.name
  end
end
