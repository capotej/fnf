require 'rubygems'
require 'bundler'
Bundler::GemHelper.install_tasks

require 'rake/extensiontask'

Rake::ExtensionTask.new('fifowriter') do |ext|
  ext.lib_dir = File.join('lib', 'fifowriter')
end
