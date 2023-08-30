module Api::V1
  class NamesController < ApplicationController
    def fetch
      render json: {
        country: 'RU',
        possibility: 0.1
      }
    end
  end
end
