require 'test_helper'

class ItemHistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "ItemHistory: verify new area" do
    item = items(:item_one)
    hist = ItemHistory.new

    hist.user = users(:wallBMW)
    hist.old_area = item.area

    item.area = areas(:area_three)
    hist.new_area = item.area

    assert item.save, "item saved with updated area"
    assert hist.save, "history saved with updated area"
    end
end
