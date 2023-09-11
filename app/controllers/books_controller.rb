class BooksController < ApplicationController
  USERS = { "lifo" => "world" }

  before_action :authenticate 

  layout "main" ,except: [:index]
  
  def index
    @book = Book.all
    #respond_to do |format|
      #format.html # index.html.erb
      #format.xml  { render xml: @book }
      #format.json { render json: @book }
    #end
  end

  def show
    @book = Book.find(params[:id])
    #render file: "#{Rails.root}/public/404.html", layout: false
    #render json: @book
  end

  def edit
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to  @book
      UserMailer.with(user: @book).welcome_email.deliver_now
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to(@book)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def book_params
    params.require(:book).permit(:title, :content)
  end

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
