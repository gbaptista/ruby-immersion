# encoding: utf-8

module Modules_Human_04

  EYES = 'purple'

  def self.speak; 'hello stranger...'; end

  def talk; 'hello stranger...'; end

end

class Modules_SexyLady_04

  include Modules_Human_04

end