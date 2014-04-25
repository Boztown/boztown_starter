class Admin::UsersController < ApplicationController

  handles_sortable_columns

  def index
    @users = User.all.order(sortable_column_order).page params[:page]
  end
  
end
