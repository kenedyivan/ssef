class BlogController < ApplicationController
  def index
    #@articles = Article.order(created_at: :desc).limit(2)
    #@articles = User.joins(:articles)
    if params[:offset]
      @articles = Article.joins(:user).order(created_at: :desc).limit(params[:limit]).offset(params[:offset])
    else
      @articles = Article.joins(:user).order(created_at: :desc).limit(1)
    end


  end

=begin
  def show
    @id = params[:id]

    @article = Article.joins(:user).find_by_id(@id)
  end
=end
end
