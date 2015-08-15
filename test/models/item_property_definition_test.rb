require 'test_helper'

class ItemPropertyDefinitionTest < ActiveSupport::TestCase
  test "Item Property Definition: name must be between 2 and 50 characters" do
    prop_def = ItemPropertyDefinition.new(:item_type => item_types(:cpu))
    assert_not prop_def.save, "saved with nil name"

    prop_def.name = "a"
    assert_not prop_def.save, "saved with short name"

    prop_def.name = "ab"
    assert prop_def.save, "save failed with valid (2 char) name"

    prop_def.name = "Carajillo percolator, grinder sit espresso trifect"
    assert prop_def.save, "save failed with valid (50 char) name"

    prop_def.name = "Carajillo percolator, grinder sit espresso trifecta"
    assert_not prop_def.save, "saved with long name"
  end

  test "Item Property Definition: name must be unique to item type" do
    ItemPropertyDefinition.new(:name => "Espresso uniq", :item_type => item_types(:cpu)).save

    dup_def = ItemPropertyDefinition.new(:name => "Espresso uniq", :item_type => item_types(:cpu))
    assert_not dup_def.save, "duplicate name saved"

    dup_def.item_type = item_types(:ram)
    assert dup_def.save, "unique name for item type not saved"
  end

  test "Item Property Definition: item type must be present" do
    prop_def = ItemPropertyDefinition.new(:name => "Espresso")
    assert_not prop_def.save, "definition saved without item type"

    prop_def.item_type = item_types(:cpu)
    assert prop_def.save, "definition save failed with valid item type"
  end
end
