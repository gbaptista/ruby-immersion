# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_04 < Test::Unit::TestCase

  def test_with_love

    # Constantes e métodos de classe são implementados na classe pelo módulo:

    assert_equal('purple', Modules_SexyLady_04::EYES)

    assert_equal('hello stranger...', Modules_SexyLady_04.new.talk)

    # Métodos de módulo não são implementados na classe pelo módulo:
    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_SexyLady_04.speak
    }.message)

    # Implementar um módulo na classe não faz com que a classe tenha um namespace:
    assert_match(/uninitialized constant/, assert_raise(NameError){
      Modules_Human_04::Modules_SexyLady_04.new
    }.message)

  end

end