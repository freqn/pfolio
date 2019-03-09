require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "MyString",
      :sales => 1,
      :author => nil,
      :genre => nil
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[sales]"

      assert_select "input[name=?]", "book[author_id]"

      assert_select "input[name=?]", "book[genre_id]"
    end
  end
end
