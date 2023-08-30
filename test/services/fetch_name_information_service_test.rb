require "test_helper"

class FetchNameInformationServiceTest < ActiveSupport::TestCase
  test '#call' do
    name = 'Dave'
    stub_request(:get, "#{FetchNameInformationService::FETCH_NAME_BASE_URL}?name=#{name}")
    result = FetchNameInformationService.new.call(name: 'Dave')

    assert result[:country].is_a? String
    assert result[:possibility].is_a? String
  end
end
