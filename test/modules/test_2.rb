# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest < Test::Unit::TestCase

  def test_with_love

    # gowebgo!
    assert(true)

  end

end