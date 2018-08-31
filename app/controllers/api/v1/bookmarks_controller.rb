class Api::V1::BookmarksController < ApplicationController
  before_action :find_note, only: [:update]
  def index
    @bookmarks = Bookmark.all
    render json: @bookmarks
  end

  def show

  end

  def update
    @bookmark.update(note_params)
    if @bookmark.save
      render json: @bookmark, status: :accepted
    else
      render json: { errors: @bookmark.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def bookmark_params
    params.permit(:user_id, :job_id)
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
