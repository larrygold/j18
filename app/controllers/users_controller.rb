class UsersController < ApplicationController
  def new
  end

  def create
    @name = params[:name]
    @bio = params[:bio]
    puts @name
    puts @bio
    User.create(username: @name, bio: @bio)
    @id = User.last.id
    redirect_to show_user_path(id:@id)
  end

  def show
    @id = params[:id]
    @name = User.find(@id).username
    @bio = User.find(@id).bio
  end

end
