require 'application_system_test_case'

class PostsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit posts_url
    # assert_select "h1", text: "Dule"
    assert_text "Dule"
    assert_select "h1"
  end

  test "createpost" do
    visit posts_url

    click_on "New Post"

    fill_in "Name", with: "asd"

    click_on "Create Post"

    assert_text "asd"
  end
end
