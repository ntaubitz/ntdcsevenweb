class BooksController < ApplicationController
  before_action :set_book, only: %i[ show ]

  # GET /books or /books.json
  def index
    @books = Book.all
    redirect_to @books.first
  end

  # GET /books/1 or /books/1.json
  def show
    @books = Book.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.fetch(:book, {})
    end
end
