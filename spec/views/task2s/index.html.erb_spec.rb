require 'rails_helper'

RSpec.describe "task2s/index", type: :view do
  before(:each) do
    assign(:task2s, [
      Task2.create!(
        title: "Title",
        description: "MyText"
      ),
      Task2.create!(
        title: "Title",
        description: "MyText"
      )
    ])
  end

  it "renders a list of task2s" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
