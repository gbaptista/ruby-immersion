# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_05 < Test::Unit::TestCase

  def test_with_love

    # É possível utilizar o módulo como namespace e também implementá-lo na classe:
    assert_equal('petit gateau', Modules_Human_05::Woman.new.talk)

    # Classes dentro do módulo ficam acessíveis por classes que implementam o módulo:

    assert_equal('petit gateau', Modules_SexyLady_05::Woman.new.talk)

    assert_equal('cupcake?', Modules_SexyLady_05::LittleGirl.speak)

  end

end