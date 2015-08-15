require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "Item: must contain an area" do
    item = Item.new(:item_type => item_types(:cpu))
    assert_not item.save, "item saved without an area"

    item.area = areas(:area_one)
    assert item.save, "item save failed with area"
  end

  test "Item: must contain an item type" do
    item = Item.new(:area => areas(:area_one))
    assert_not item.save, "item saved without an item type"

    item.item_type = item_types(:cpu)
    assert item.save, "item save failed with item type"
  end

  test "Item: properties must be accessible from object" do
    item = items(:item_one)

    assert_not_nil item.item_properties, "item properties value is nil"
    assert_equal ItemProperty.where(:item => item).length, item.item_properties.length, "item properties do not match db"
  end
end
