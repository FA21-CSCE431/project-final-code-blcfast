class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @members = Member.find(params[:id])
  end

  def new
  end

  def edit
  end
end
