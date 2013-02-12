# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_08 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de instância são manipuláveis pela classe que
    # implementa o módulo pelos métodos de instância:

    modules_woman_08 = Modules_Woman_08.new

    # Variáveis de instância não possuem valores prédefinidos quando
    # manipuladas por métodos de instância:
    assert_equal(nil, modules_woman_08.instance_var)

    modules_woman_08.instance_var = { 'name' => 'Megan' }

    assert_equal({ 'name' => 'Megan' }, modules_woman_08.instance_var)

    modules_woman_08.instance_var['eyes'] = 'purple'

    assert_equal({ 'name' => 'Megan', 'eyes' => 'purple' }, modules_woman_08.instance_var)

    # Variáveis de instância são tratadas de forma
    # isolada entre instâncias da classe e o módulo:

    assert_equal({ 'name' => 'Megan', 'eyes' => 'purple' }, modules_woman_08.instance_var)

    assert_equal({ 'name' => 'Calvin' }, Modules_Human_08.module_instance_var)

    assert_equal(nil, Modules_Woman_08.new.instance_var)

  end

end