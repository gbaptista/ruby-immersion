# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_01 < Test::Unit::TestCase

  def test_with_love

    # Módulos não podem ser instanciados nem acessar métodos de instância:

    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_Human_01.new
    }.message)

    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_Human_01.talk
    }.message)

  end

end