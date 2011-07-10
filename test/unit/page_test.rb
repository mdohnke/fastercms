require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "creating correct page name" do
    p = Page.create("title" => "Meine Testseite","description" => "Eine Testseite")
    assert p.name == "meine_testseite"
  end
  
  #  test "creating new page" do
  #    p = Page.new(
  #      "title" => "Testseite",
  #      "description" => "Eine Testseite",
  #      "is_startpage" => true
  #    )
  #  end


end
