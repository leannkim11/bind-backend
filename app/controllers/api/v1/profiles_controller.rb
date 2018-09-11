class Api::V1::ProfilesController < ApplicationController
  before_action :find_profile, only: [:update]
  def index
    @profiles = Profile.all
    render json: @profiles
  end

  def create
    profile = Profile.create(resume_params)
    render json: profile
  end

  def destroy
    Profile.destroy(params[:id])
  end

  def show

  end

  def update
    @profile.update(profile_params)
    if @profile.save
      render json: @profile, status: :accepted
    else
      render json: { errors: @profile.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def profile_params
    params.permit(:user_id, :linkedin, :city, :state, :industry, :willing_to_relocate, :personal_statement)
  end

  def find_profile
    @profile = Profile.find(params[:id])
  end
end
