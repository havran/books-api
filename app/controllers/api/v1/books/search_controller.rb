module Api::V1
  module Books
    class SearchController < ApiController

      # GET  /search/isbn/:isbn(.:format) api/v1/books/search#isbn
      def isbn
        book = Book.find_by(isbn: params[:isbn])

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