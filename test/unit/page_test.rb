require 'test_helper'

class PageTest < ActiveSupport::TestCase

  test "creating correct page name" do
    p = Page.create("title" => "Meine Testseite","description" => "Eine Testseite")
    assert p.name == "meine_testseite"
  end

end
