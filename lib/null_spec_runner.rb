class NullSpecRunner
  def self.passing?(*specs)
    run(*specs).zero?
  end

  def self.run(*specs)
    RSpec::Core::Runner.run(specs, nil, nil)
  end
end

