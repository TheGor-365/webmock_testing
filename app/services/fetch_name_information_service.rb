class FetchNameInformationService
  FETCH_NAME_BASE_URL = "https://api.nationalize.io"

  def call(name:)
    uri      = URI("#{FETCH_NAME_BASE_URL}?name=#{name}")
    response = Net::HTTP.get(uri)
  end
end
