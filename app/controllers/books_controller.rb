class BooksController < ApplicationController
  before_action :require_login
  def index
    @books=current_user.books
    @book_count = @books.count
    @reading_count = @books.where(status: "Reading").count
    @done_count = @books.where(status: "Done").count
    if params[:search].present?
      @books=@books.where("title LIKE ?", "%#{params[:search]}%")
    end
    if params[:status].present?
      @books=@books.where(status: params[:status])
    end
  end
  def new
    @book=current_user.books.new
  end
  def create
    @book=current_user.books.new(param)
    if @book.save
      redirect_to "/books", notice: "Book added successfully"
    else
      render :new
    end
  end
  def edit
    @book=current_user.books.find(params[:id])
  end
  def update
    @book=current_user.books.find(params[:id])
    if @book.update(edit_param)
      redirect_to "/books", notice: "Book updated successfully"
    else
      render :edit
    end
  end
  def show
    @book=current_user.books.find(params[:id])
  end
  def destroy
    @book=current_user.books.find(params[:id])
    @book.destroy
    redirect_to "/books", notice: "Book deleted successfully"
  end
  private

  def param
    params.require(:book).permit(:title, :author, :status, :pages, :genre)
  end
  def edit_param
    params.require(:book).permit(:title, :author, :status, :pages, :genre, :id)
  end
end
