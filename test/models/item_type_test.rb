require 'test_helper'

class ItemTypeTest < ActiveSupport::TestCase
  test "ItemType: should not save without name" do
    type = ItemType.new
    assert_not type.save, "saved the ItemType without a name"
  end

  test "ItemType: description show have length <= 255" do
    type = ItemType.new
    type.name = "blepbh"
    type.description = "Pitchfork pickled distillery, before they sold out sustainable direct trade semiotics meditation meh. Hella Pitchfork salvia, retro viral lumbersexual roof party chillwave. Migas drinking vinegar whatever cred, authentic semiotics salvia actually pop-up po"
    assert_not type.save, "saved with ItemType description > 255"
  end

  test "ItemType: name is unique" do
    type1 = ItemType.new(:name => "unique")
    type1.save

    type2 = ItemType.new(:name => "unique")
    assert_not type2.save, "saved with duplicate name"
  end

  test "ItemType: items property should have all items that reference this type" do
    type1 = item_types(:cpu)
    area1 = areas(:one)

    Item.new(:area => area1, :item_type => type1).save
    Item.new(:area => area1, :item_type => type1).save

    assert_not_nil type1.items, "items property is nil"
    assert_equal 2, type1.items.length, "items length was not 2"
  end

  test "ItemType: access defined properties from model" do
    cpu = item_types(:cpu)
    assert ItemPropertyDefinition.where(:item_type => cpu).length > 0, "no property defined for cpu, check fixtures"
    assert_equal ItemPropertyDefinition.where(:item_type => cpu).length, cpu.item_property_definitions.length, "property definitions not equal to expected num in db"
  end
end
