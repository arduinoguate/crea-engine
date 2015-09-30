require 'rails_helper'

RSpec.describe "crea_modules/new", type: :view do
  before(:each) do
    assign(:crea_module, CreaModule.new(
      :name => "MyString",
      :enabled => false,
      :module_type => "",
      :status => "MyString"
    ))
  end

  it "renders new crea_module form" do
    render

    assert_select "form[action=?][method=?]", crea_modules_path, "post" do

      assert_select "input#crea_module_name[name=?]", "crea_module[name]"

      assert_select "input#crea_module_enabled[name=?]", "crea_module[enabled]"

      assert_select "input#crea_module_module_type[name=?]", "crea_module[module_type]"

      assert_select "input#crea_module_status[name=?]", "crea_module[status]"
    end
  end
end
