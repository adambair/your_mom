require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "your_mom"
    gem.summary = %Q{A collection of words joined in sentence appropriately relevant to the title, ergo your mom.}
    gem.description = %Q{A collection of words joined in sentence appropriately relevant to the title, ergo your mom.}
    gem.email = "adambair@gmail.com"
    gem.homepage = "http://github.com/adambair/your_mom"
    gem.authors = ["Adam Bair"]
    gem.executable = "your_mom"
    gem.files =  FileList["[A-Z]*", "{bin,generators,lib,test}/**/*", 'lib/jeweler/templates/.gitignore']
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Your mom is not available. Install it with: gem install your_mom"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  puts 'Warning: your_mom has no tests.'
  #test.libs << 'lib' << 'test'
  #test.pattern = 'test/**/test_*.rb'
  #test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "your_mom #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
