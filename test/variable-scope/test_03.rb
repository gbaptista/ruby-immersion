# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_variablescope_03 < Test::Unit::TestCase

  def test_with_love

    # Variáveis globais são acessíveis quando criadas fora da classe.
    assert_equal('global_a', $variablescope_03_global_a)
 
    # Variáveis globais são acessíveis quando criadas dentro da classe.
    assert_equal('global_b', $variablescope_03_global_b)
 
    # Variáveis globais são acessíveis quando criadas dentro de um método de classe.
    assert(VariableScope_03.public_method)
    assert_equal('global_c', $variablescope_03_global_c)
 
    # Variáveis globais são acessíveis quando criadas dentro de um método de instância.
    assert(VariableScope_03.new.public_method)
    assert_equal('global_d', $variablescope_03_global_d)
 
    # Variáveis globais são acessíveis quando criadas dentro de um método protected.
    assert(VariableScope_03.new.send(:protected_method))
    assert_equal('global_e', $variablescope_03_global_e)
 
    # Variáveis globais são acessíveis quando criadas dentro de um método de instância privado.
    assert(VariableScope_03.new.send(:private_method))
    assert_equal('global_f', $variablescope_03_global_f)
 
    # Variáveis globais são acessíveis quando criadas dentro de um método de classe privado.
    assert(VariableScope_03.send(:private_method))
    assert_equal('global_g', $variablescope_03_global_g)

  end

end