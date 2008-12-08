require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  should_require_attributes :title
  should_require_unique_attributes :title
end
