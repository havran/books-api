module Api::V1
  module Books
    class CrudController < ApiController

      #  POST /book-add(.:format)          api/v1/books/crud#create
      def create
        book = Book.new
        BookRepresenter.new(book).from_json(request.body.string)
        book.save!

        render status: 200, json: {
          status: 200,
          message: "Book saved!"
        }
      rescue ActiveRecord::RecordInvalid => e
        render status: 422, json: {
          status: 422,
          message: "Invalid request! #{e.message}"
        }
      end

      # GET  /:id(.:format)               api/v1/books/crud#read
      def read
        book = Book.find_by(id: params[:id])

        if book.nil?
          render status: 404, json: {
            status: 404,
            message: 'Book not found!'
          }
        else
          render json: BookRepresenter.new(book).to_json
        end
      end

    end
  end
end
