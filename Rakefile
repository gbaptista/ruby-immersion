require 'rake/testtask'

# rake
# rake test
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*/test_*.rb']
end

# rake t modules:2
# rake test_only modules:2
#
# test/modules/test_2.rb
task :test_only do
  rule '' do |t|
    if t.name.match ':'
      Rake::TestTask.new(t.name) do |tt|
        f = t.name.split(':')
        tt.test_files = ["test/#{fn[0]}/test_#{fn[1]}.rb"]
      end
    end
  end
end
task :t => :test_only

# rake g modules:3
# rake generate modules:3
#
# lib/modules/3.rb
# test/modules/test_3.rb
task :generate do
  rule '' do |t|
    if t.name.match ':'
      fn = t.name.split(':')
      File.open("lib/#{fn[0]}/#{fn[1]}.rb", 'w') { |f| f.write "# encoding: utf-8\n\n" }
      File.open("test/#{fn[0]}/test_#{fn[1]}.rb", 'w') { |f| f.write "# encoding: utf-8

require 'test/unit'
require 'include_file'

IncludeFile::inject __FILE__

class LoveTest#{fn[0].capitalize}#{fn[1]} < Test::Unit::TestCase

  def test_with_love

    # gowebgo!
    assert(true)

  end

end" }

      system("chmod 664 lib/#{fn[0]}/#{fn[1]}.rb")
      system("chown gbaptista:gbaptista lib/#{fn[0]}/#{fn[1]}.rb")

      system("chmod 664 test/#{fn[0]}/test_#{fn[1]}.rb")
      system("chown gbaptista:gbaptista test/#{fn[0]}/test_#{fn[1]}.rb")

    end

  end

end
task :g => :generate

desc 'Run tests'
task :default => :test