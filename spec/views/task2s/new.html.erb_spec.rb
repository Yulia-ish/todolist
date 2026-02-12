require 'rails_helper'

RSpec.describe "task2s/new", type: :view do
  before(:each) do
    assign(:task2, Task2.new(
      title: "MyString",
      description: "MyText"
    ))
  end

  it "renders new task2 form" do
    render

    assert_select "form[action=?][method=?]", task2s_path, "post" do

      assert_select "input[name=?]", "task2[title]"

      assert_select "textarea[name=?]", "task2[description]"
    end
  end
end
