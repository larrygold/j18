class UsersController < ApplicationController
  def new
  end

  def create
    @name = params[:name]
    @bio = params[:bio]
    puts @name
    puts @bio
    User.create(username: @name, bio: @bio)
  end

end
