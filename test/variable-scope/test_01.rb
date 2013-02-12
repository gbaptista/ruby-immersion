# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_01 < Test::Unit::TestCase

  def test_with_love
 
    # Variáveis locais são acessíveis no mesmo bloco de código.
    variablescope_01_local_a = 'local_a'
    assert_equal('local_a', variablescope_01_local_a)
 
    loop {
 
      # Variáveis locais são acessíveis em blocos internos de código.
      assert_equal('local_a', variablescope_01_local_a)
 
      # Variáveis locais são acessíveis no mesmo bloco de código.
      variablescope_01_local_b = 'local_b'
      assert_equal('local_b', variablescope_01_local_b)
 
      break
 
    }
 
    # Variáveis locais criadas em blocos internos não são acessíveis fora desses blocos.
    assert_match(/undefined local/, assert_raise(NameError){
      variablescope_01_local_b
    }.message)
 
    # Variáveis locais não são acessíveis em métodos quando criadas fora deles,
    # mesmo quando dentro do mesmo bloco de código.
    variablescope_01_local_c = 'local_c'
    def read_variablescope_01_local_var
      variablescope_01_local_c
    end
    assert_match(/undefined local/, assert_raise(NameError){
      read_variablescope_01_local_var
    }.message)
 
    # Variáveis locais criadas dentro da classe não são acessíveis
    # dentro dela em métodos de instância ou de classe:

    assert_match(/undefined local/, assert_raise(NameError){
      VariableScope_Human_01.read_local_var
    }.message)

    assert_match(/undefined local/, assert_raise(NameError){
      VariableScope_Human_01.new.read_local_var
    }.message)

  end

end