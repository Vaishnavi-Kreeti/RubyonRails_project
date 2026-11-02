class ReviewsController < ApplicationController
  def index
    @reviews = Review.includes(:book, :user).order(created_at: :desc)
  end
  def create
    @book=current_user.books.find(params[:id])
    @review=@book.reviews.new(review_params)
    @review.user=current_user
    if @review.save
      redirect_to book_path(@book), notice: "Review added successfully"
    else
      redirect_to book_path(@book), alert: @review.errors.full_messages.to_sentence
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
