module Api::V1
  class BooksController < ApplicationController
    def index
      respond_with Book.all.as_json(
        only: :author,
        root: true
      )
    end
  end
end
