module Api::V1
  class NamesController < ApplicationController
    def fetch
      # render json: {
      #   country: 'RU',
      #   possibility: 0.1
      # }

      result = FetchNameInformationService.new.(name: params[:name])

      render json: {
        country:     result[:country],
        possibility: result[:possibility]
      }
    end
  end
end
