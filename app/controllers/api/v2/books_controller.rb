module Api::V2
  class BooksController < ApplicationController
    def index
      respond_with Book.all.as_json(
        # only: %i[ author overvew ],
        # author: :author,
        # overvew: :overvew,
        except: %i[ created_at updated_at ],
        root: true
      )
    end
  end
end
