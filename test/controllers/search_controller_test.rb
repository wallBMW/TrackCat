require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "/search method: get should return search index page" do
    assert_routing "/search", { controller: "search", action: "index" }
  end

  test "/search method: post should route to search action" do
    assert_routing({ method: "post", path: "/search" }, { controller: "search", action: "search" })
  end

  test "/search should show search index page" do
    get :index
    assert_response :success
  end

  test "/search (post) should return search results" do
    xhr :post, :search, { criteria: 'NT' }
    assert_response :success
  end
end
