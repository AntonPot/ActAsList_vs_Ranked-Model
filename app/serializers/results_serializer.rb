class ResultsSerializer < ActiveModel::Serializer
  attributes :place
  attribute :dog_name do
    object.dog.name
  end

  attribute :dog_id do
    object.dog.id
  end

  attribute :dog_owner do
    object.dog.owner.name
  end
end