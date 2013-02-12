# encoding: utf-8

module Modules_Human_11

  LEGS = 2

  def speak; 'petit gateau'; end

end

module Modules_Woman_11

  EYES = 'purple'

  def talk; 'hello stranger...'; end

end

class Modules_SexyLady_11

  include Modules_Human_11

  include Modules_Woman_11

end