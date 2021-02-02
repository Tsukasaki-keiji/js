class UsersController < ApplicationController
  def index
    @users = User.all
    @all_ranks = Note.find(Like.group(:note_id).order('count(note_id) desc').limit(3).pluck(:note_id))
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_search_params
    params.fetch(:search, {}).permit(:name, :gender, :birthday_from, :birthday_to, :prefecture_id)
  end

end
