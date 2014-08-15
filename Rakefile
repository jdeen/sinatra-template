require 'rubygems'
require 'rake'

# Load rake tasks
Dir.glob('build/rake/**/*.rake').each { |f| import f }

# DM Visualizer config
require 'dm-visualizer/rake/graphviz_task'
DataMapper::Visualizer::Rake::GraphVizTask.new(
  :include => ['src/lib'],
  :require => ['src/models']
)

