require 'rubygems'
require 'rake'

$project = "WoA"
$version = (`git describe --tags`).chomp.to_s

# Load rake tasks
Dir.glob('build/rake/**/*.rake').each { |f| import f }

# DM Visualizer config
require 'dm-visualizer/rake/graphviz_task'
DataMapper::Visualizer::Rake::GraphVizTask.new(
  :include => ['.'],
  :require => Dir['src/models/general/*.rb']
)

