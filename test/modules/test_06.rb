# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_06 < Test::Unit::TestCase

  def test_with_love

    # Módulos não implementam métodos de módulo de outros módulos:
    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_Woman_06.speak
    }.message)

    # Módulos implementam constantes de outros módulos:
    assert_equal(2, Modules_Woman_06::LEGS)

    # Módulos não implementam constantes de outros módulos apenas por estarem dentro deles:
    assert_match(/uninitialized constant/, assert_raise(NameError){
      Modules_Human_06::Girl::LEGS
    }.message)

    # Quando um módulo "pai" é implementado em um módulo "filho", a classe que implementar
    # o módulo "filho" receberá os métodos de classe e constantes de ambos os módulos:

    assert_equal('hello stranger...', Modules_SexyLady_06.new.talk)

    assert_equal('purple', Modules_SexyLady_06::EYES)

    assert_equal(2, Modules_SexyLady_06::LEGS)

  end

end