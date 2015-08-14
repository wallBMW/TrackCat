require 'test_helper'

class ItemTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save ItemType without name" do
    type = ItemType.new
    assert_not type.save, "saved the ItemType without a name"
  end
end
