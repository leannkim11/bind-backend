class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: %i[create]
  before_action :find_note, only: [:update]

  def profile
      if logged_in
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      else
        render json: { message: 'User not found' }, status: :not_found
      end
    end


  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

  def update
    @user.update(note_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
