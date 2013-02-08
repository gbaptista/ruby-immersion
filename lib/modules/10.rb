# encoding: utf-8

module Modules_Human_10

  @@class_var = { 'name' => 'Calvin' }

  def self.module_class_var; @@class_var; end
  def self.module_class_var=(value); @@class_var = value; end

  def class_var; @@class_var; end
  def class_var=(value); @@class_var = value; end

end

class Modules_Woman_10

  include Modules_Human_10

end