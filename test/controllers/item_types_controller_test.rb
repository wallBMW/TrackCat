require 'test_helper'

class ItemTypesControllerTest < ActionController::TestCase
  test "/itemtypes should route to item_types index" do
    assert_routing "/itemtypes", { controller: "item_types", action: "index" }
  end

  test "/itemtypes/create should route to item_types create" do
    assert_routing({ method: "post", path: "/itemtypes/create" }, { controller: "item_types", action: "create" })
  end

  test "/itemtypes should contain list of all item types" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_types)
  end

  test "/itemtypes/create should create a new item type, and return it" do
    assert_difference('ItemType.count') do
      post :create, { item_type: { :name => 'SSD', :description => 'Solid State Drive' } }, :format => 'json'
    end

    assert_response :success
    item_type = JSON.parse(response.body)
    assert_equal "SSD", item_type["name"]
    assert_equal "Solid State Drive", item_type["description"]
    assert_not_nil item_type["id"]
  end

  test "/itemtypes/create should return error messages on validation failure" do
    post :create, { item_type: { :description => 'Solid State Drive' } }, :format => 'json'

    assert_response :unprocessable_entity
    errors = JSON.parse(response.body)
    assert errors.length > 0
  end
end
