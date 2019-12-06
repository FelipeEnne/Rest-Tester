class UsersController < ApplicationController
  def index
    @home = 'I am the home action page'
  end

  def show
    @show = 'I am the show action page'
  end

  def new
    @new = 'I am the new action page'
  end

  def edit
    @edit = 'I am the edit action page'
  end

  def create
    @create = 'I am the create action page'
  end
end
