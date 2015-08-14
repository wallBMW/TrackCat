require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User: name must be unique" do
    user = users(:armstrhb)
    dup_user = User.new(:name => user.name)

    assert_not dup_user.save, "accepted a user with a duplicate name"
  end

  test "User: name must be between 3 and 25 characters" do
    assert_not User.new(:name => "", :password => "testest").save, "empty user name accepted"
    assert_not User.new(:name => "ab", :password => "testest").save, "short user name accepted (2 chars)"
    assert User.new(:name => "abc", :password => "testest").save, "valid user name length not accepted (3 chars)"
    assert User.new(:name => "Mocha espresso strong swe", :password => "testest").save, "valid user name not accepted (25 chars)"
    assert_not User.new(:name => "Mocha espresso strong swee", :password => "testest").save, "long user name accepted (26 chars)"
    assert_not User.new(:name => "Cream con panna flavour saucer whipped cinnamon strong body. A dark body rich turkish, roast, sit steamed café au lait trifecta pumpkin spice.", :password => "testest").save, "Long user name accepted"
  end
end
