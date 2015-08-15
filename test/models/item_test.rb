require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "Item: must contain an area" do
    item = Item.new(:item_type => item_types(:cpu))
    assert_not item.save, "item saved without an area"

    item.area = areas(:area_one)
    assert item.save, "item save failed with area"
  end
end
