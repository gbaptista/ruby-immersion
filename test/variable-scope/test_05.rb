# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_05 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de instância não são acessíveis
    # quando criadas fora da classe:
    assert_equal(nil, @variablescope_05_instance_a)

    # Variáveis de instância não são acessíveis
    # fora da classe quando criadas dentro dela:
    assert_equal(nil, @variablescope_05_instance_b)


  end

end