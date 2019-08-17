class CarsController < ApplicationController

  def index
    @cars = Car.order(created_at: :desc).limit(5)
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user_id = current_user.id
    if @car.save
      flash[:notice] = "愛車を登録しました。"
      redirect_to @car
    else
      flash[:notice] = "愛車を登録できません。"
      render 'new'
    end
  end

  def show
    @car = Car.find(params[:id])
    @comment = Comment.new
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    flash[:notice] = "愛車を削除しました。"
    redirect_to user_path
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    car = Car.find(params[:id])
    car.update(car_params)
    redirect_to car_path(car.id)

  end

  def search
  end

  private

    def car_params
      params.require(:car).permit(:manufacture_id, :car_model_id, :car_year_id, :image, :introduction)
    end

  end



