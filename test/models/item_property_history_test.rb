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
end
