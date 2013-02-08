# encoding: utf-8

module Modules_Human_08

  @instance_var = { 'name' => 'Calvin' }

  def self.module_instance_var; @instance_var; end
  def self.module_instance_var=(value); @instance_var = value; end

  def instance_var; @instance_var; end
  def instance_var=(value); @instance_var = value; end

end

class Modules_Woman_08

  include Modules_Human_08

end