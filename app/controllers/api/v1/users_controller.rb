class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: %i[create]
  before_action :find_user, only: [:update]


  # def profile 
  #   render json
  # end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user.update(note_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def logged_in_user

    current_user ? (render json: UserSerializer.new(current_user), status: 200) :

    (render json: {message: "user not found"}, status: 404)
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
