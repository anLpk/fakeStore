class JerseysController < ApplicationController
  before_action :make_jersey, only: [:show, :edit, :update, :destroy]

  def index
    @jerseys = Jersey.all
  end

  def show
    @review = Review.new
  end

  def new
    @jersey = Jersey.new
  end

  def create
    @jersey = Jersey.new(jersey_params)
    if @jersey.save
      redirect_to jersey_path(@jersey)
    else
      render :new
    end
  end

  def edit 
  end

  def update 
    if @jersey.update(jersey_params)
      redirect_to jersey_path(@jersey) and return
    else
      render :edit
    end
  end

  def destroy
    @jersey.destroy
    flash[:alert] = 'You have successfully deleted your Jersey.'
    redirect_to jerseys_path
  end

  private

  def make_jersey
    @jersey = Jersey.find(params[:id])
    # authorize @jersey
  end

  def jersey_params
    params.require(:jersey).permit(:name, :price, :size, :description, :photo)
  end
end
