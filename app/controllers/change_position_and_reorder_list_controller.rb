class ChangePositionAndReorderListController < ApplicationController
  include Changeable

  def insert_at
    change_position { dog.insert_at(position) }
  end

  def move_lower
    change_position { dog.move_lower }
  end

  def move_higher
    change_position { dog.move_lower }
  end

  def move_to_bottom
    change_position { dog.move_to_bottom }
  end

  def move_to_top
    change_position { dog.move_to_top }
  end

  def remove_from_list
    change_position { dog.remove_from_list }
  end
end
