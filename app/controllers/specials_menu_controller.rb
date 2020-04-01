class SpecialsMenuController < ApplicationController
 before_action :set_specials_menu
def create
 @specials_menu = @specials_menu_list.specials_menu_items.create(todo_item_params)
 redirect_to @todo_list
end
private
def set_specials_menu
 @todo_list = TodoList.find(params[:todo_list_id])
end
def specials_menu_params
 params[:specials_menu].permit(:content)
end
end
