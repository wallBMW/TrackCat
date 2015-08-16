require 'test_helper'

class ItemPropertyHistoryTest < ActiveSupport::TestCase
  test "ItemPropertyHistory: item must be present" do
    item = items(:item_one)
    prop = item.item_properties.where(:value => "INTEL").first

    hist = ItemPropertyHistory.new(:item_property_definition => prop.item_property_definition)
    hist.user = users(:armstrhb)
    hist.old_value = prop.value

    prop.value = "AMD"
    hist.new_value = prop.value

    assert_not hist.save, "item property history saved with no item"

    hist.item = item
    assert hist.save, "item property history not saved with item present"
  end

  test "ItemPropertyHistory: record must return itself on success, false otherwise" do
    item = items(:item_one)
    prop = item.item_properties.first
    hist = ItemPropertyHistory.new

    assert hist.record(users(:armstrhb), prop, "Saturn"), "save failed to return history object"
    assert_not hist.record(nil, prop, "Saturn"), "save succeeded with nil user"
  end

  test "ItemPropertyHistory: record must save old and new values" do
    item = items(:item_one)
    prop = item.item_properties.first
    hist = ItemPropertyHistory.new

    old_val = prop.value
    new_val = "Saturn"

    hist.record(users(:armstrhb), prop, new_val)
    assert_equal old_val, hist.old_value, "record did not save old_value"
    assert_equal new_val, hist.new_value, "record did not save new_value"
  end

  test "ItemPropertyHistory: definition must be present" do
    item = items(:item_one)
    prop = item.item_properties.first

    assert ItemPropertyHistory.new.record(users(:armstrhb), prop, "Saturn"), "save failed with definition present"

    prop.item_property_definition = nil
    assert_not ItemPropertyHistory.new.record(users(:armstrhb), prop, "Saturn"), "save succeeded with definition absent"
  end

  test "ItemPropertyHistory: user must be present" do
    item = items(:item_one)
    prop = item.item_properties.first

    assert_not ItemPropertyHistory.new.record(nil, prop, "Saturn"), "save failed with definition present"
    assert ItemPropertyHistory.new.record(users(:armstrhb), prop, "Saturn"), "save failed with definition present"
  end
end
