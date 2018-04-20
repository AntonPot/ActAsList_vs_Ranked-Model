Rails.application.routes.draw do
  resources :breeds do
    resources :dogs do
      get 'insert_at/:position', to: 'change_position_and_reorder_list#insert_at'
      get 'move_lower', to: 'change_position_and_reorder_list#move_lower'
      get 'move_higher', to: 'change_position_and_reorder_list#move_higher'
      get 'move_to_bottom', to: 'change_position_and_reorder_list#move_to_bottom'
      get 'move_to_top', to: 'change_position_and_reorder_list#move_to_top'
      get 'remove_from_list', to: 'change_position_and_reorder_list#remove_from_list'

      get 'increment_position', to: 'change_position_without_reordering#increment_position'
      get 'decrement_position', to: 'change_position_without_reordering#decrement_position'
      get 'set_list_position/:list_position', to: 'change_position_without_reordering#set_list_position'

      get 'info', to: 'items_position#info'
    end
  end

  resources :dogs
  resources :owners
end
