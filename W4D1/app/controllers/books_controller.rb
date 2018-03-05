class BooksController < ApplicationController
  def index
    @books = BooksDB.instance.execute(<<-SQL)
        SELECT
          *
        FROM
          books
      SQL
    render :index
  end

  def new
    # your code here
  end

  def create
    # your code here
  end

  def destroy
    # your code here
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
