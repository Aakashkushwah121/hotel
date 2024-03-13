require "test_helper"

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # test "visit index" do 
  #   sign_in users(:regular)
  #   visit entries_url
  #   assert_selector "h1", text: "projects"
  # end

  test "entry model attributes must not be empty" do
    entry = Entry.new
    assert entry.invalid?
    assert entry.errors[:meal_type].any?
    assert entry.errors[:calories].any?
    assert entry.errors[:proteins].any?
    assert entry.errors[:carbohydrates].any?
  end

  test "fats must be numerical" do
    entry = Entry.new(fats: "abc")
    assert entry.invalid?
    assert_equal ["is not a number"], entry.errors[:fats]
  end


end
