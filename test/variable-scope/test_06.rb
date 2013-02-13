# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_06 < Test::Unit::TestCase

  def test_with_love

    # Guardam valores pré-definidos na sua criação quando acessadas por métodos de classe:
    assert_equal('instance_var', VariableScope_06.instance_var)

    # São manipuláveis por métodos de classe:

    VariableScope_06.instance_var = 'my sugar'

    assert_equal('my sugar', VariableScope_06.instance_var)

  end

end