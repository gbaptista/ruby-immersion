# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest < Test::Unit::TestCase

  def test_with_love

    # Módulos não podem ser instanciados.
    assert_match(/undefined method/, assert_raise(NoMethodError){
      Human.new
    }.message)

  end

end