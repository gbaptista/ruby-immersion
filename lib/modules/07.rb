# encoding: utf-8

module Modules_Human_07

  @instance_var = { 'name' => 'Calvin' }
  def self.module_instance_var
    @instance_var
  end

end

class Modules_Woman_07

  include Modules_Human_07

end