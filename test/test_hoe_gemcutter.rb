require "test/unit"
require "hoe/gemcutter"

class TestHoeGemcutter < Test::Unit::TestCase
  include Hoe::Gemcutter

  def test_tasks_defined
    define_gemcutter_tasks
    assert Rake::Task[:release_to_gemcutter]
    assert Rake::Task[:release_to].prerequisites.include?('release_to_gemcutter')
  end

  # TODO add tests for push once using gemcutters command directly.
end
