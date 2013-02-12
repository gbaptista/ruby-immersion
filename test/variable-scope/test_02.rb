# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_02 < Test::Unit::TestCase

  def test_with_love

    # Variáveis locais não são acessíveis em métodos quando criadas fora deles,
    # mesmo quando dentro do mesmo bloco de código.
    variablescope_02_local_a = 'local_a'
    def read_variablescope_02_local
      variablescope_02_local_a
    end
    assert_match(/undefined local/, assert_raise(NameError){
      read_variablescope_02_local
    }.message)
 
    # Variáveis locais criadas dentro da classe não são acessíveis
    # dentro dela em métodos de instância ou de classe:

    assert_match(/undefined local/, assert_raise(NameError){
      VariableScope_02.read_local_var
    }.message)

    assert_match(/undefined local/, assert_raise(NameError){
      VariableScope_02.new.read_local_var
    }.message)

  end

end