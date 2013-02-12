# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_11 < Test::Unit::TestCase

  def test_with_love

    # Classes podem implementar mais de um módulo:

    assert_equal(2, Modules_SexyLady_11::LEGS)

    assert_equal('purple', Modules_SexyLady_11::EYES)

    assert_equal('petit gateau', Modules_SexyLady_11.new.speak)

    assert_equal('hello stranger...', Modules_SexyLady_11.new.talk)

  end

end