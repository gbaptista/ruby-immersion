# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_09 < Test::Unit::TestCase

  def test_with_love

    # São tratadas de forma isolada entre métodos de classe e as
    # diferentes instâncias da classe:

    instance_01 = VariableScope_09.new
    instance_02 = VariableScope_09.new

    assert_equal('instance_var_class', VariableScope_09.instance_var)
    assert_equal('instance_var', instance_01.instance_var)
    assert_equal('instance_var', instance_02.instance_var)

    VariableScope_09.instance_var = 'Has he lost his mind?'
    instance_01.instance_var = 'Can he see or is he blind?'
    instance_02.instance_var = 'He was turned to steel'

    assert_equal('Has he lost his mind?', VariableScope_09.instance_var)
    assert_equal('Can he see or is he blind?', instance_01.instance_var)
    assert_equal('He was turned to steel', instance_02.instance_var)
    assert_equal('instance_var', VariableScope_09.new.instance_var)

  end

end