class Api::V1::BooksController < ApplicationController

    def index
        books = Book.all
        render json: books, include: [:reviews]    
    end

    def create
        book = Book.create!(book_params)

        if book
          render json: book, status: :created
        else
          render json: book.errors, status: :unprocessable_identity
        end
    end

    def show
        book = Book.find(params[:id])
        render json: book, include: [:reviews]
    end

    def search
        sanitized_query = ActiveRecord::Base.sanitize_sql_like(params[:q].downcase)
        books = Book.where("lower(title) LIKE ?", "%#{sanitized_query}%")

        render json: books, include: [:reviews]
    end

    private

    def book_params
        params.permit(:title, :subjects, :author, :languages, :image)
    end

end