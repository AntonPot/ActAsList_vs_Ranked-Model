class DogSerializer < ActiveModel::Serializer
  attributes :name, :position
  attribute :owner do
    object.owner.name
  end
end
