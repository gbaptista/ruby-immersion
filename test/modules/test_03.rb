# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest_Modules_03 < Test::Unit::TestCase

  def test_with_love

    # Classes criadas dentro de módulos os utilizam como namespace:

    assert_equal('cupcake?', Modules_Human_03::LittleGirl.speak)

    assert_equal('hello stranger...', Modules_Human_03::Woman::SexyLady.speak)

    # Módulos podem ser criados dentro de módulos para utilizar namespace:
    assert_equal('hi!', Modules_Human_03::Boy.speak)

    # Os métodos e contantes do módulo não são implementados na classe apenas por ela estar dentro dele:

    assert_match(/uninitialized constant/, assert_raise(NameError){
      Modules_Human_03::LittleGirl::EYES
    }.message)

    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_Human_03::LittleGirl.new.talk
    }.message)

     assert_match(/uninitialized constant/, assert_raise(NameError){
      Modules_Human_03::Woman::SexyLady::EYES
    }.message)

    assert_match(/undefined method/, assert_raise(NoMethodError){
      Modules_Human_03::Woman::SexyLady.new.talk
    }.message)

  end

end