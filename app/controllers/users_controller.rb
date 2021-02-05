class UsersController < ApplicationController
  before_action :set_q, only: [:index, :search]


  def index
    @users = User.all
    @all_ranks = Note.find(Like.group(:note_id).order('count(note_id) desc').limit(3).pluck(:note_id))
  end

  def show
    @user = User.find(params[:id])
  end

  def search
    @results = @q.result
  end

  private

  def user_search_params
    params.fetch(:search, {}).permit(:name, :gender, :birthday_from, :birthday_to, :prefecture_id)
  end

  def set_q
      @q = User.ransack(params[:q])
  end

end
