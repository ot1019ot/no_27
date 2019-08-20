class CommentsController < ApplicationController
	before_action :authenticate_user!

  def create
  	@car = Car.find(params[:car_id])
  	@comment = current_user.comments.new(comment_params)
    @comment.car_id = @car.id
    @comment.save
    redirect_to car_path(@comment.car_id)
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to car_path(id: @comment.car_id)
    end
  end

  private
	def comment_params
  	params.require(:comment).permit(:user_id,:car_id,:comment)
  	end

end
