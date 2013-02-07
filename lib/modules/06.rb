# encoding: utf-8

module Modules_Human_06

  LEGS = 2

  def self.speak; 'strawberry'; end

  def talk; 'hello stranger...'; end

  module Girl; end

end

module Modules_Woman_06

  EYES = 'purple'

  include Modules_Human_06

end

class Modules_SexyLady_06

  include Modules_Woman_06

end