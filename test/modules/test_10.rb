# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_10 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de classe são manipuláveis pela classe que
    # implementa o módulo pelos métodos de instância:

    modules_woman_10 = Modules_Woman_10.new

    # Variáveis de classe possuem valores pré-definidos quando
    # manipuladas por métodos de instância:
    assert_equal({ 'name' => 'Calvin' }, modules_woman_10.class_var)

    modules_woman_10.class_var = { 'name' => 'Megan' }

    assert_equal({ 'name' => 'Megan' }, modules_woman_10.class_var)

    modules_woman_10.class_var['eyes'] = 'purple'

    assert_equal({ 'name' => 'Megan', 'eyes' => 'purple' }, modules_woman_10.class_var)

    # Variáveis de classe são tratadas de forma única
    # entre instâncias da classe e o módulo:

    assert_equal({ 'name' => 'Megan', 'eyes' => 'purple' }, modules_woman_10.class_var)

    assert_equal({ 'name' => 'Megan', 'eyes' => 'purple' }, Modules_Human_10.module_class_var)

    assert_equal({ 'name' => 'Megan', 'eyes' => 'purple' }, Modules_Woman_10.new.class_var)

  end

end