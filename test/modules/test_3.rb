# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest < Test::Unit::TestCase

  def test_with_love

    # Métodos de classe não podem ser acessados pelo módulo:
    assert_match(/undefined method/, assert_raise(NoMethodError){
      Human3.talk
    }.message)

    assert_match(/undefined method/, assert_raise(NoMethodError){
      Human3::talk
    }.message)

  end

end