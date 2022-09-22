class BooksController < ApplicationController
  def new
  end


  def index
    @book = Book.new
    @books = Book.all
  end

  def create

    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end
  
  def destroy 
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end 

  def show
    @book = Book.all
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
