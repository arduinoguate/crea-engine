require 'rails_helper'

RSpec.describe "crea_modules/edit", type: :view do
  before(:each) do
    @crea_module = assign(:crea_module, CreaModule.create!(
      :name => "MyString",
      :enabled => false,
      :module_type => "",
      :status => "MyString"
    ))
  end

  it "renders the edit crea_module form" do
    render

    assert_select "form[action=?][method=?]", crea_module_path(@crea_module), "post" do

      assert_select "input#crea_module_name[name=?]", "crea_module[name]"

      assert_select "input#crea_module_enabled[name=?]", "crea_module[enabled]"

      assert_select "input#crea_module_module_type[name=?]", "crea_module[module_type]"

      assert_select "input#crea_module_status[name=?]", "crea_module[status]"
    end
  end
end
