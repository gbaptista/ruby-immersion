# encoding: utf-8

module Modules_Human_05

  def talk; 'petit gateau'; end

  class Woman
    include Modules_Human_05
  end

  class LittleGirl
    def self.speak; 'cupcake?' end;
  end

end

class Modules_SexyLady_05

  include Modules_Human_05

end