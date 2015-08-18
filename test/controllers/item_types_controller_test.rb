require 'test_helper'

class ItemTypesControllerTest < ActionController::TestCase
  test "/itemtypes should route to item_types index" do
    assert_routing "/itemtypes", { controller: "item_types", action: "index" }
  end

  test "/itemtypes/create should route to item_types create" do
    assert_routing({ method: "post", path: "/itemtypes/create" }, { controller: "item_types", action: "create" })
  end

  test "/itemtypes/:id should route to item_types show" do
    assert_routing "/itemtypes/1", { controller: "item_types", action: "show", id: "1" }
  end

  test "/itemtypes/:id method: delete should route to item_types destroy" do
    assert_routing({ method: "delete", path: "/itemtypes/1" }, { controller: "item_types", action: "destroy", id: "1" })
  end

  test "/itemtypes should contain list of all item types" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_types)
  end

  test "/itemtypes/create should create a new item type, and return it" do
    assert_difference('ItemType.count') do
      xhr :post, :create, { item_type: { :name => 'SSD', :description => 'Solid State Drive' } }
    end

    assert_response :success
  end

  test "/itemtypes/create should return error messages on validation failure" do
    post :create, { item_type: { :description => 'Solid State Drive' } }, :format => 'json'

    assert_response :unprocessable_entity
    errors = JSON.parse(response.body)
    assert errors.length > 0
  end

  test "/itemtypes/:id should return a js file to build the item type detail" do
    xhr :get, :show, format: :js, id: ItemType.first.id
    assert_response :success
  end

  test "/itemtypes/:id method: delete should delete item type, and return it" do
    assert_difference('ItemType.count', -1, "The item type should be destroyed") do
      xhr :delete, :destroy, id: ItemType.first
    end

    assert_response :success
  end
end
