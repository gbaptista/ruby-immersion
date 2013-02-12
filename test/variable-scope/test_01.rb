# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_01 < Test::Unit::TestCase

  def test_with_love
    
    # Variáveis locais não são acessíveis quando criadas fora da classe:
     assert_match(/undefined local/, assert_raise(NameError){
      variablescope_01_local_a
    }.message)

    # Variáveis locais são acessíveis no mesmo bloco de código.
    variablescope_01_local_b = 'local_b'
    assert_equal('local_b', variablescope_01_local_b)
 
    loop {
 
      # Variáveis locais são acessíveis em blocos internos de código.
      assert_equal('local_b', variablescope_01_local_b)
 
      # Variáveis locais são acessíveis no mesmo bloco de código.
      variablescope_01_local_c = 'local_c'
      assert_equal('local_c', variablescope_01_local_c)
 
      break
 
    }
 
    # Variáveis locais criadas em blocos internos não são acessíveis fora desses blocos.
    assert_match(/undefined local/, assert_raise(NameError){
      variablescope_01_local_c
    }.message)

  end

end