require 'test_helper'

class AreaTest < ActiveSupport::TestCase

  test "Area: Area must have a name" do
    test_area = Area.new
    assert_not test_area.save, "area saved without a name"
  end

  test "Area: Area must have a unique name" do
    test_area1 = Area.new(:name => "thatlocation")
    test_area1.save

    test_area2 = Area.new(:name => "thatlocation")
    assert_not test_area2.save, "saved area without unique name"
  end

  test "Area: should not have name < 3 characters" do
    test_area1 = Area.new(:name => "ab")
    assert_not test_area1.save, "saved with name < 3 characters"

    test_area2 = Area.new(:name => "abc")
    assert test_area2.save, "saved name with valid length"
  end

  test "Area: description should have length <= 255 characters" do
    test_area1 = areas(:area_one)
    test_area1.description = "YOLO DIY street art, bespoke bitters pop-up skateboard jean shorts single-origin coffee. Normcore YOLO banh mi vinyl try-hard. Cliche Wes Anderson 90's gastropub. squid, ethical lo-fi whatever banh mi. Gastropub. salviad Bushwick normcore put a bird on it."
    assert_not test_area1.save, "saved without valid description length"
  end

  test "Area: must have unique location" do
    test_area1 = areas(:area_one)
    test_area2 = Area.new(:location => test_area1.location)
    assert_not test_area2.save, "accepted an area with a duplicate location"
  end




end
