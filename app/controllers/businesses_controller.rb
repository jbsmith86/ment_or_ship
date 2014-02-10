class BusinessesController < ApplicationController

  def index
    @businesses = Business.all
  end

  def show
    @business = Business.find(params[:id])
    if current_user
      @membership = Membership.where(:business_id => params[:id], :person_id => current_user.id)
    end
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.create(business_params)
  end

private

  def business_params
    params.require(:business).permit(:name, :category, :website, :address, :phone, :about)
  end

end

