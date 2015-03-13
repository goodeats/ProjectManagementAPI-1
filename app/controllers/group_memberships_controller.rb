class GroupMembershipController < ApplicationController

  def index
    @group_membership = GroupMembership.all
    render json: @group_memberships
  end

  def show
    @group_membership = GroupMembership.find(params[:id])
    render json: @group_membership
  end

  def create
    @group_membership = GroupMembership.new(group_params)
    if group.save
      render json: @group_membership, status: :created, location: @group_membership
    else
      render json: @group_membership.errors, status: :unprocessable_entity
    end
  end

  def update
    @group_membership = GroupMembership.find(group_membership_params[:id])
    if @group_membership.update(group_params[:group])
    else
      render json: @group_membership.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @group_membership = GroupMembership.find(group_params[:id])
    @group_membership.destroy
  end

  private

  def group_membership_params
    params.require(:group_membership).permit(:role)
