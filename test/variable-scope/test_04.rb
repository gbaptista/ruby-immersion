# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_04 < Test::Unit::TestCase

  def test_with_love

    # Variáveis globais são acessíveis quando criadas dentro da classe.
    assert_equal('Around The World', $variablescope_04_global)

    # Se uma variável global é alterada fora da classe,
    # o valor dela dentro da classe mudará também.

    $variablescope_04_global = 'You say hello and I say I do'

    assert_equal('You say hello and I say I do', VariableScope_04.new.read_global)

    # Se uma variável global é alterada dentro da classe,
    # o valor fora dela mudará também.

    VariableScope_04.new.write_global = 'Fox hole love'

    assert_equal('Fox hole love', $variablescope_04_global)

    assert_equal('Fox hole love', VariableScope_04.new.read_global)

  end

end