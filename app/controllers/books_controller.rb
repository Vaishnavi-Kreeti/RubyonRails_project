class BooksController < ApplicationController
  def index
    @books=Book.all
  end
  def new
    @book=Book.new
  end
  def create
    @book=Book.create(param)
    if @book.save
      redirect_to "/books"
    else
      render :new
    end
  end
  def param
    params.require(:book).permit(:title,:author,:status,:pages)
  end
end
