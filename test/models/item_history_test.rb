require 'test_helper'

class ItemHistoryTest < ActiveSupport::TestCase

    test "ItemHistory: must save new area value" do
      item = items(:item_one)
      hist = ItemHistory.new

      new_value = areas(:area_three)
      hist.record(users(:wallBMW), item, new_value)

      assert_equal new_value, hist.new_area, "record saved with new value"
    end

end
