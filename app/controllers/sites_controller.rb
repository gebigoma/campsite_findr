class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    if current_user
      @site = Site.new
    else
      flash[:danger] = 'You must be logged in to submit a campground'

      redirect_to new_session_path 
    end
  end

  def create
    @site = current_user.sites.new(site_params)
    if @site.save
      redirect_to site_path(@site)
    else
      redirect_to user_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def site_params
    params.require(:site).permit(:name, :location, :description, :image)
  end
end
