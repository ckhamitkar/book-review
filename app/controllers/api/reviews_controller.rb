class Api::V1::ReviewsController < ApplicationController
     
    def create
        review = Review.create!(review_params)

        if review
            render json: review, status: :created
        else
            render json: review.errors, status: :unprocessable_identity
        end
    end


    private

    def review_params
        params.require(:review).permit(:title, :description, :score, :book_id)
    end
end