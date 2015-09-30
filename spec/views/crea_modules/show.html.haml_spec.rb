require 'rails_helper'

RSpec.describe "crea_modules/show", type: :view do
  before(:each) do
    @crea_module = assign(:crea_module, CreaModule.create!(
      :name => "Name",
      :enabled => false,
      :module_type => "",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Status/)
  end
end
