class ArticlesController < ApplicationController\

  layout 'admin'

  before_action :confirm_logged_in

  def index
    @articles = Article.order(created_at: :desc)
    render('articles/index')
  end

  def show
  end

  def new
    @article = Article.new({:title => 'default'})
    render('articles/new')
  end


  def create

    uploaded_io = params[:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end


    @article = Article.new(:user_id => session[:user_id], :title => params[:title], :body => params[:body], :lead_image => uploaded_io.original_filename)

    if @article.save
      redirect_to(:controller => 'admin', :action => 'index')
    else
      render(:controller => 'admin', :action => 'new')
    end
  end

  def edit
  end

  def delete
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
