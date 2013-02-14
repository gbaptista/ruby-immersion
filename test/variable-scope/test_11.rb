# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_11 < Test::Unit::TestCase

  def test_with_love

    # Guardam valores pré-definidos na sua criação quando
    # acessadas por métodos de classe ou de instância:

    assert_equal('class_var', VariableScope_11.new.class_var)

    assert_equal('class_var', VariableScope_11.class_var)

    # São manipuláveis por métodos de instância:

    instance = VariableScope_11.new

    instance.class_var = 'my sugar'

    assert_equal('my sugar', instance.class_var)

    # São manipuláveis por métodos de classe:

    VariableScope_11.class_var = 'desenhei no ar'

    assert_equal('desenhei no ar', VariableScope_11.class_var)

  end

end