# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_07 < Test::Unit::TestCase

  def test_with_love

    # Nâo guardam valores pré-definidos quando acessadas por métodos de instância:
    assert_equal(nil, VariableScope_07.new.instance_var)

    # São manipuláveis por métodos de instância:

    instance = VariableScope_07.new

    instance.instance_var = 'my sugar'

    assert_equal('my sugar', instance.instance_var)

  end

end