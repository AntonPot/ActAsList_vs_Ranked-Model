class ItemsPositionController < ApplicationController
  include Changeable
  
  def info
    render json: {
      dog.name => {
        first?: dog.first?,
        last?: dog.last?,
        in_list?: dog.in_list?,
        not_in_list?: dog.not_in_list?,
        default_position?: dog.default_position?,
        higher_item: dog.higher_item,
        higher_items: dog.higher_items,
        lower_item: dog.lower_item,
        lower_items: dog.lower_items
      }
    }
  end
end
