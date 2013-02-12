# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_07 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de instância são acessáveis e manipuláveis por métodos de módulo do módulo:

    assert_equal({ 'name' => 'Calvin' }, Modules_Human_07.module_instance_var)

    Modules_Human_07.module_instance_var['name'] = 'Zooey'

    assert_equal({ 'name' => 'Zooey' }, Modules_Human_07.module_instance_var)

    Modules_Human_07.module_instance_var['eyes'] = 'purple'

    assert_equal({ 'name' => 'Zooey', 'eyes' => 'purple' }, Modules_Human_07.module_instance_var)

    # Variáveis de instância não são manipuláveis pela classe que
    # implementa o módulo pelos métodos de módulo:
    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_Woman_07.module_instance_var
    }.message)

  end

end