#!/usr/bin/env rake
# -*- ruby -*-

require 'hoe'

Hoe.plugin :doofus, :git, :gemcutter

Hoe.spec 'hoe_gemcutter' do
  developer('James Tucker', 'jftucker@gmail.com')
  extra_deps << %w(hoe >=2.3.3)
  extra_deps << %w(gemcutter >=0.1.3)
  extra_dev_deps << %w(hoe-doofus >=1.0.0)
  extra_dev_deps << %w(hoe-git >=1.3.0)
  # Something breaks in rake install_gem with the following:
  # extra_dev_deps << %w(hoe-gemcutter >=1.0.0)
  self.rubyforge_name = 'libraggi'
end

# vim: syntax=ruby