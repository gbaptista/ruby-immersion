# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest < Test::Unit::TestCase

  def test_with_love

    # Classe criadas dentro de módulos os utilizam como namespaces:

    assert('cupcake?', Human3::LittleGirl.speak)

    assert('hello stranger...', OtherHuman3::Woman3::SexyLady.speak)

  end

end