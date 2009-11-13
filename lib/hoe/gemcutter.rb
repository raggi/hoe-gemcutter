require 'rake'

class Hoe #:nodoc:
  module Gemcutter
    VERSION = '1.0.0'

    def define_gemcutter_tasks
      desc "Push gem to gemcutter."
      task :release_to_gemcutter => [:clean, :package, :release_sanity] do
        pkg   = "pkg/#{spec.name}-#{spec.version}"
        gems  = Dir["#{pkg}*.gem"]
        gems.each do |g|
          # TODO - once gemcutter supports command invocation, use it.
          sh "gem push #{g}"
        end
      end

      task :release_to => :release_to_gemcutter
    end
  end
end