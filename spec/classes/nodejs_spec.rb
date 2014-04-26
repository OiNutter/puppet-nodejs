require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'nodejs' do
  let(:facts) { default_test_facts }

  let(:default_params) do
    {
      :provider => "nodenv",
      :prefix => "/test/boxen",
    }
  end

  let(:params) { default_params }

  it { should contain_class("nodejs::build") }
  it { should contain_file("/opt/rubies") }

  context "provider is nodenv" do
    let(:params) {
      default_params.merge(:provider => "nodenv")
    }

    it { should contain_class("nodejs::nodenv") }
  end

end
