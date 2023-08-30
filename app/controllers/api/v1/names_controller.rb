module Api::V1
  class NamesController < ApplicationController
    def fetch
      # render json: {
      #   country: 'RU',
      #   possibility: 0.1
      # }

      country, possibility = FetchNameInformationService.new.(name: params[:name])

      render json: {
        country:     country,
        possibility: possibility
      }
    end
  end
end
