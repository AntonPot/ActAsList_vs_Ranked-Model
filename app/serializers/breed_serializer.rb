class BreedSerializer < ActiveModel::Serializer
  attributes :breed
  has_many :dogs, serializer: DogSerializer
end