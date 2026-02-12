require 'rails_helper'

RSpec.describe "task2s/edit", type: :view do
  let(:task2) {
    Task2.create!(
      title: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:task2, task2)
  end

  it "renders the edit task2 form" do
    render

    assert_select "form[action=?][method=?]", task2_path(task2), "post" do

      assert_select "input[name=?]", "task2[title]"

      assert_select "textarea[name=?]", "task2[description]"
    end
  end
end
