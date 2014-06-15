# Conventionally, all specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`. The generated `.rspec`
# file contains `--require spec_helper` which will cause this file to always be loaded, without a need to explicitly
# require it in any files.
#
# Given that it is always loaded, you are encouraged to keep this file as light-weight as possible. Requiring
# heavyweight dependencies from this file will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, make a separate helper file that requires this one and
# then use it only in the specs that actually need it.
RSpec.configure do |config|
  # These two settings work together to allow you to limit a spec run to individual examples or groups you care about by
  # tagging them with `:focus` metadata. When nothing is tagged with `:focus`, all examples get run.
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # Many RSpec users commonly either run the entire suite or an individual file, and it's useful to allow more verbose
  # output when running an individual spec file.
  if config.files_to_run.one?
    # Use the documentation formatter for detailed output, unless a formatter has already been configured (e.g. via a
    # command-line flag).
    config.default_formatter = 'doc'
  end

  # Print the 10 slowest examples and example groups at the end of the spec run, to help surface which specs are running
  # particularly slow.
  config.profile_examples = 10

  # Run specs in random order to surface order dependencies. If you find an order dependency and want to debug it, you
  # can fix the order by providing the seed, which is printed after each run (`--seed <seed-id>`).
  config.order = :random

  # Seed global randomization in this process using the `--seed` CLI option. Setting this allows you to use `--seed` to
  # deterministically reproduce test failures related to randomization by passing the same `--seed` value as the one
  # that triggered the failure.
  Kernel.srand config.seed

  # RSpec Expectations configuration
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  # RSpec Mocks configuration
  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect

    # Prevents you from mocking or stubbing a method that does not exist on a real object. This is generally recommended.
    mocks.verify_partial_doubles = true
  end
end