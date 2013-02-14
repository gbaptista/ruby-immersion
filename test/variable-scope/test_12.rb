# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_VariableScope_12 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de classe são tratadas de forma única entre
    # métodos de classe e as diferentes instâncias da classe:

    instance_01 = VariableScope_12.new
    instance_02 = VariableScope_12.new

    assert_equal('class_var', VariableScope_12.class_var)
    assert_equal('class_var', instance_01.class_var)
    assert_equal('class_var', instance_02.class_var)

    VariableScope_12.class_var = 'Has he lost his mind?'
    instance_01.class_var = 'Can he see or is he blind?'
    instance_02.class_var = 'He was turned to steel'

    assert_equal('He was turned to steel', VariableScope_12.class_var)
    assert_equal('He was turned to steel', instance_01.class_var)
    assert_equal('He was turned to steel', instance_02.class_var)
    assert_equal('He was turned to steel', VariableScope_12.new.class_var)

  end

end