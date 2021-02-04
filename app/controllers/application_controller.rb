class ApplicationController < ActionController::Base

  before_action :set_search

    def set_search
      @search = Product.ransack(params[:q]) #ransackの検索メソッド
      @search_products = @search.result(distinct: true).order(created_at: "DESC").includes(:user).page(params[:page]).per(5)
    end
end
