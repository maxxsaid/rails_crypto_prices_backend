require "test_helper"

class CoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coin = coins(:one)
  end

  test "should get index" do
    get coins_url, as: :json
    assert_response :success
  end

  test "should create coin" do
    assert_difference("Coin.count") do
      post coins_url, params: { coin: { ticker: @coin.ticker, user_id: @coin.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show coin" do
    get coin_url(@coin), as: :json
    assert_response :success
  end

  test "should update coin" do
    patch coin_url(@coin), params: { coin: { ticker: @coin.ticker, user_id: @coin.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy coin" do
    assert_difference("Coin.count", -1) do
      delete coin_url(@coin), as: :json
    end

    assert_response :no_content
  end
end
