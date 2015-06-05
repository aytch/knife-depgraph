#
# Copyright 2014, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$:.unshift(File.dirname(__FILE__) + '/lib')
require 'knife-depgraph/version'

Gem::Specification.new do |s|
  s.name = 'knife-depgraph'
  s.version = KnifeDepgraph::VERSION
  s.license = 'Apache 2.0'
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ['LICENSE']
  s.summary = 'A knife plugin to display dependency data for cookbooks used by a node'
  s.description = s.summary
  s.authors = ['Noah Kantrowitz', 'Daniel DeLeo']
  s.email = 'dan@chef.io'
  s.homepage = 'https://github.com/danielsdeleo/knife-depgraph'

  s.add_development_dependency 'chef'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.require_path = 'lib'
  s.files = %w{LICENSE README.md Rakefile} + Dir.glob('{lib,spec}/**/*')
end

