require "test_helper"

class Api::V1::NamesControllerTest < ActionDispatch::IntegrationTest
  # test '#fetch' do
  #   get api_v1_fetch_name_url
  #
  #   assert_response :success
  # end
  #
  # test '#fetch response' do
  #   get api_v1_fetch_name_url
  #   json_response = JSON.parse(response.body)
  #
  #   assert_equal 'RU', json_response['country']
  #   assert_equal 0.1, json_response['possibility']
  # end

  test '#fetch response not nil' do
    name = 'Jack'
    stub_request(:get, "#{FetchNameInformationService::FETCH_NAME_BASE_URL}?name=#{name}")
    get api_v1_fetch_name_url(name: name)
    json_response = JSON.parse(response.body)

    assert json_response['country'].is_a? String
    assert json_response['possibility'].is_a? String
  end
end
