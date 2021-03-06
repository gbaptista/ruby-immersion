# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_08 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de instância guardam valores pré-definidos quando acessadas
    # por métodos de instância se definidas dentro do initialize:
    assert_equal('instance_var', VariableScope_08.new.instance_var)

    # O initialize é ignorado ao acessar a variável de instância por métodos de classe:
    assert_equal(nil, VariableScope_08.instance_var)

  end

end