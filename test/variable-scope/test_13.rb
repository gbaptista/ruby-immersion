# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_13 < Test::Unit::TestCase

  def test_with_love

    # Constantes são acessíveis quando criadas fora da classe:

    assert_equal('constant_a', VARIABLESCOPE_13_CONSTANT_A)

    assert_equal('constant_a', VariableScope_13.new.read_constant_a)

    assert_equal('constant_a', VariableScope_13.read_constant_a)

    # Constantes não são acessíveis diretamente fora da classe quando criadas dentro dela:
    assert_match(/uninitialized constant/, assert_raise(NameError){
      VARIABLESCOPE_13_CONSTANT_B
    }.message)

    # São sempre acessíveis através do ::
    assert_equal('constant_b', VariableScope_13::VARIABLESCOPE_13_CONSTANT_B)

  end

end