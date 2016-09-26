require 'test_helper'

class AutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto = autos(:one)
  end

  test "should get index" do
    get autos_url, as: :json
    assert_response :success
  end

  test "should create auto" do
    assert_difference('Auto.count') do
      post autos_url, params: { auto: { engine: @auto.engine, make: @auto.make, mileage: @auto.mileage, model: @auto.model, trim: @auto.trim, user_id: @auto.user_id, year: @auto.year } }, as: :json
    end

    assert_response 201
  end

  test "should show auto" do
    get auto_url(@auto), as: :json
    assert_response :success
  end

  test "should update auto" do
    patch auto_url(@auto), params: { auto: { engine: @auto.engine, make: @auto.make, mileage: @auto.mileage, model: @auto.model, trim: @auto.trim, user_id: @auto.user_id, year: @auto.year } }, as: :json
    assert_response 200
  end

  test "should destroy auto" do
    assert_difference('Auto.count', -1) do
      delete auto_url(@auto), as: :json
    end

    assert_response 204
  end
end
