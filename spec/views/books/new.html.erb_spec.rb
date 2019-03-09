require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :sales => 1,
      :author => nil,
      :genre => nil
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[sales]"

      assert_select "input[name=?]", "book[author_id]"

      assert_select "input[name=?]", "book[genre_id]"
    end
  end
end
