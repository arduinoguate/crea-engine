require 'rails_helper'

RSpec.describe "crea_modules/index", type: :view do
  before(:each) do
    assign(:crea_modules, [
      CreaModule.create!(
        :name => "Name",
        :enabled => false,
        :module_type => "",
        :status => "Status"
      ),
      CreaModule.create!(
        :name => "Name",
        :enabled => false,
        :module_type => "",
        :status => "Status"
      )
    ])
  end

  it "renders a list of crea_modules" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
