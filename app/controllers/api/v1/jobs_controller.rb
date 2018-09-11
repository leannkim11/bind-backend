class Api::V1::JobsController < ApplicationController
  before_action :find_job, only: [:update]
  def index
    @jobs = Job.all
    render json: @jobs
  end

  def create
    job = Job.create(job_params)
    render json: job
  end

  def destroy
    Job.destroy(params[:id])
  end

  def show

  end

  def update
    @job.update(job_params)
    if @job.save
      render json: @job, status: :accepted
    else
      render json: { errors: @job.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def job_params
    params.permit(:user_id, :position, :city, :state, :industry, :description, :my_position, :company)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end
