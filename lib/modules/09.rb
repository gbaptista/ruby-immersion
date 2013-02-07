# encoding: utf-8

module Modules_Human_09

  @@instance_var = { 'name' => 'Calvin' }
  def self.module_class_var
    @@instance_var
  end

end

class Modules_Woman_09

  include Modules_Human_09

end