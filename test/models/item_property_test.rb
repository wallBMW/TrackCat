require 'test_helper'

class ItemPropertyTest < ActiveSupport::TestCase
  test "Item Property: owning item should be present" do
    prop = ItemProperty.new(:item_property_definition => item_property_definitions(:cpu_brand), :value => "INTEL")
    assert_not prop.save, "property saved with no owning item"

    prop.item = items(:item_two)
    assert prop.save, "property save failed with item present"
  end

  test "Item Property: definition must be present" do
    prop = ItemProperty.new(:item => items(:item_two), :value => "Latte")
    assert_not prop.save, "property saved with no definition"

    prop.item_property_definition = item_property_definitions(:cpu_brand)
    assert prop.save, "property save failed with definition present"
  end
end
