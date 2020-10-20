class ReviewsController < ApplicationController

  def index
    @reviews = Review.order('created_at DESC')
  end

  # if user is logged in show review form
  # else show flash message with link to log in (later after login redirect to previous page)
  # redirect to show page 
  def create
    @site = Site.find(params[:site_id])
    @review = Review.new(review_params)
    @review.site = @site
    @review.user = current_user
    @review.save
    redirect_to site_path(@site)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private 
  def review_params
    params.require(:review).permit(:body, :rating)
  end

end
