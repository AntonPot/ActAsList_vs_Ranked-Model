module Changeable
  extend ActiveSupport::Concern

  included do
    before_action :breed, :dog
  end

  private

  def change_position(&block)
    yield
    render json: breed, serializer: BreedSerializer
  end

  def dog
    @dog = Dog.find(params[:dog_id])
  end

  def breed
    @breed ||= Breed.find(params[:breed_id])
  end

  def position
    params[:position].to_i
  end
end
