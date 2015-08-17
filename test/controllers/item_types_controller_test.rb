require 'test_helper'

class ItemTypesControllerTest < ActionController::TestCase
  test "/itemtypes should route to item_types index" do
    assert_routing "/itemtypes", { controller: "item_types", action: "index" }
  end

  test "/itemtypes should contain list of all item types" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_types)
  end
end
