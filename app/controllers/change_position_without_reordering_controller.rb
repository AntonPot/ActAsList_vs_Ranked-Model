class ChangePositionWithoutReorderingController < ApplicationController
  include Changeable

  def increment_position
    change_position { dog.increment_position }
  end

  def decrement_position
    change_position { dog.decrement_position }
  end

  def set_list_position
    change_position { dog.set_list_position(params[:list_position]) }
  end
end
