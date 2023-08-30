class FetchNameInformationService
  FETCH_NAME_BASE_URL = "https://api.nationalize.io"

  def call(name:)
    uri      = URI("#{FETCH_NAME_BASE_URL}?name=#{name}")
    response = JSON.parse(Net::HTTP.get(uri))
    {
      country:     response['country'][0]['country_id'],
      possibility: response['country'][0]['probability']
    }
  rescue StandardError => e
    {
      country:     '',
      possibility: ''
    }
  end
end
