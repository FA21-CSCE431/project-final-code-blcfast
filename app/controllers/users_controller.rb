class UsersController < ApplicationController
  def edit; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @subject.save
      redirect_to(receipts_path)
    else
      render('new')
    end
  end

  def destroy; end
end
