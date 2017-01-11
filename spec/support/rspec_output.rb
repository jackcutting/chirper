RSpec.configure do |config|
  config.files_to_run.one? && config.default_formatter = 'doc'

  config.profile_examples = 5
end
