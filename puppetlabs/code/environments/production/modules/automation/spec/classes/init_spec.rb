require 'spec_helper'
describe 'automation' do
  context 'with default values for all parameters' do
    it { should contain_class('automation') }
  end
end
