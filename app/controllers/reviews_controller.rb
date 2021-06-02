class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save # true / false
      redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), notice: 'Review was successfully deleted.'
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
