class UsersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if  @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
    @user = User.find(params[:id])
 end
  end

  def destroy
  end

  private

  def customer_params
    params.require(:user).permit(:nickname,:sex,:age,:area_id,:height,:weight,
      :image,)
  end
