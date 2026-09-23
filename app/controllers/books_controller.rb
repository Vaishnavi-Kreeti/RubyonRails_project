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
  def edit
    @book=Book.find(params[:id])
  end
  def update
    @book=Book.find(params[:id])
    if @book.update(edit_param)
      redirect_to "/books"
    else
      render :edit
    end
  end
  def destroy
    @book=Book.find(params[:id])
    @book.destroy
    redirect_to "/books"
  end
  private

  def param
    params.require(:book).permit(:title, :author, :status, :pages, :genre)
  end
  def edit_param
    params.require(:book).permit(:title, :author, :status, :pages, :genre, :id)
  end
end
