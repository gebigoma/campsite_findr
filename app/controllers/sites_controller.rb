class SitesController < ApplicationController
  # run new action before authorize action
  before_action :authorize, only: [:new]

  def index
    @sites = Site.order('created_at DESC')
    @top_five = Site.joins(:reviews).group('sites.id').order('avg(reviews.rating) desc').first(5)
    @review = Review.new
  end

  def show
    @site = Site.find(params[:id])
    @review = Review.new
  end

  def new
    @site = Site.new
  end

  def create
    # set site variable as current user
    @site = current_user.sites.new(site_params)
    if @site.save
      redirect_to site_path(@site)
    else
      redirect_to user_path
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    @site.update(site_params)
    redirect_to site_path(@site)
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    redirect_to root_path
  end

  private 
  def site_params
    params.require(:site).permit(:name, :location, :description, :image)
  end
end
