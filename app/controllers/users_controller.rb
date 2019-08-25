class UsersController < ApplicationController
	before_action :authenticate_user!, except: [:show]


  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	user = User.find(params[:id])
  	if user.update(user_params)
  		sign_in(user, bypass: true)
  		redirect_to user_path(user.id)
  	else
  		redirect_to edit_user_path(user.id)
  	end
  end

  def destroy
    current_user.destroy
    flash[:notice] = "退会手続き完了しました。またのご利用お待ちしております。"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :area, :email,:password, :password_confirmation)
  end

end
