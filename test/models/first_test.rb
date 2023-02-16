require "test_helper"

class FirstTest < ActiveSupport::TestCase
  test "este é o primeiro teste" do
    variavel = "Charles Eduard"

    assert_equal "Charles Eduard", variavel
  end
end
