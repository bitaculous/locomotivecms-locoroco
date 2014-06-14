RSpec::Matchers.define :look_alike do |expected|
  match do |actual|
    actual.strip == expected.strip
  end

  description do
    "look-alike #{expected} (leading and trailing whitespace be removed)"
  end

  failure_message_for_should do |actual|
    "expected that #{actual} would look-alike #{expected}"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual} would not look-alike #{expected}"
  end
end