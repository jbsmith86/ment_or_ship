class MembershipsController < ApplicationController

  def new
    @mebership = Membership.new
  end

  def create
    @membership = Membership.create(membership_params)
    if @membership.save
      redirect_to :back
    end
  end

  def update
    @membership = Membership.new(membership_params)
    if @membership.save
      redirect_to :back
    end
  end

  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
    redirect_to :back
  end

private

  def membership_params
    params.require(:membership).permit(:member_since, :member_number, :business_id, :person_id)
  end

end
