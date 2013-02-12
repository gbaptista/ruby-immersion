# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_09 < Test::Unit::TestCase

  def test_with_love

    # Variáveis de classe são acessáveis e manipuláveis por métodos de módulo do módulo:

    assert_equal({ 'name' => 'Calvin' }, Modules_Human_09.module_class_var)

    Modules_Human_09.module_class_var['name'] = 'Zooey'

    assert_equal({ 'name' => 'Zooey' }, Modules_Human_09.module_class_var)

    Modules_Human_09.module_class_var['eyes'] = 'purple'

    assert_equal({ 'name' => 'Zooey', 'eyes' => 'purple' }, Modules_Human_09.module_class_var)

    # Variáveis de classe não são manipuláveis pela classe que
    # implementa o módulo pelos métodos de módulo:
    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_Woman_09.module_class_var
    }.message)

  end

end