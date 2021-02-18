class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @jersey = Jersey.find(params[:jersey_id])
    @review = Review.new(review_params)
    @review.jersey = @jersey
    if @review.save
        redirect_to jersey_path(@jersey, anchor: "review-#{@review.id}")
    else
      flash[:alert] = "Something went wrong."
      :new
    end
  end
    
  private
    
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
