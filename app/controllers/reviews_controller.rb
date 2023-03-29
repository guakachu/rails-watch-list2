class ReviewsController < ApplicationController
  before_action :set_review, only: %i[create destroy]
  before_action :set_list, only: %i[create destroy]

  def create
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @review.destroy
    redirect_to list_path(@list)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def set_list
    @list = Review.find(params[:list_id])
  end
end
