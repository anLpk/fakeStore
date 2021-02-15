class ReviewsController < ApplicationController
  def create
    @jersey = Jersey.find(params[:jersey_id])
    @review = Review.new(review_params)
    @review.jersey = @jersey
    if @review.save
      redirect_to jersey_path(@jersey)
    else
      render 'jerseys/show'
    end
  end
    
  private
    
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
