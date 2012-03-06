
require "test/unit"

require File.expand_path("../../lib/to_hash_key", __FILE__)

class ToHashKeyTest < Test::Unit::TestCase
  def test_to_hash_key
    assert_equal "5006d6f8302000e8b87fef5c50c071d6d97b4e88", "test".to_hash_key
  end 

  def test_to_hash_key_with_prefix
    assert_equal "prefix_5006d6f8302000e8b87fef5c50c071d6d97b4e88", "test".to_hash_key("prefix")
  end 

  def test_has_hash_prefix?
    assert "prefix_5006d6f8302000e8b87fef5c50c071d6d97b4e88".has_hash_prefix?("prefix")
    assert ! "5006d6f8302000e8b87fef5c50c071d6d97b4e88".has_hash_prefix?("prefix")
  end 
end

