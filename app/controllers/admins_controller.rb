class AdminsController < ApplicationController
	before_action  :authenticate_admin!

  def index
  	@users = User.all
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	flash[:notice] = "ユーザーを削除しました。"
  	redirect_to admins_path
  end
end
