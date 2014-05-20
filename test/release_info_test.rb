require 'test_helper'

class ReleaseInfoTest < ActiveSupport::TestCase
  setup do
    path = File.expand_path('../fixtures', __FILE__)
    @info = Versjons::ReleaseInfo.new(path)
  end
  test "release info empty initialization" do
    ri = Versjons::ReleaseInfo.new("")
    assert_nil ri.version
    assert_nil ri.sha
    assert_nil ri.timestamp
  end

  test "release info version" do
    assert_equal info.version, '123'
  end

  test "release info sha" do
    assert_equal info.sha, 'abcd'
  end

  test "release info timestamp" do
    assert_not_nil info.timestamp
  end

  def info
    @info
  end
end
