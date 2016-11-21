class UsersController < ApplicationController
  def index
    @users_index=true
  end

  def show
    @user = current_user
  end

  def second

  end

  def third
  end

  def create
    @user
  end

end
