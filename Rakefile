require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*/test_*.rb']
end

# rake g modules:2
#
# lib/modules/2.rb
# test/modules/test_2.rb

task :generate do

  rule '' do |t|

    if t.name.match ':'

      f = t.name.split(':')
      File.open("lib/#{f[0]}/#{f[1]}.rb", 'w') { |f| f.write "# encoding: utf-8\n\n" }
      File.open("test/#{f[0]}/test_#{f[1]}.rb", 'w') { |f| f.write "# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest < Test::Unit::TestCase

  def test_with_love

    # gowebgo!
    assert(true)

  end

end" }

      system("chmod 664 lib/#{f[0]}/#{f[1]}.rb")
      system("chown gbaptista:gbaptista lib/#{f[0]}/#{f[1]}.rb")

      system("chmod 664 test/#{f[0]}/test_#{f[1]}.rb")
      system("chown gbaptista:gbaptista test/#{f[0]}/test_#{f[1]}.rb")

    end

  end

end
task :g => :generate

desc 'Run tests'
task :default => :test