# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTestModules3 < Test::Unit::TestCase

  def test_with_love

    # Classes criadas dentro de módulos os utilizam como namespaces:

    assert('cupcake?', Human3::LittleGirl.speak)

    assert('hello stranger...', Human3::Woman::SexyLady.speak)

  end

end