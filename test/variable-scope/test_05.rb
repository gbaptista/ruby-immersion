# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_05 < Test::Unit::TestCase

  def test_with_love

    # gowebgo!
    assert_equal('strawberry', VariableScope_05.talk)

  end

end