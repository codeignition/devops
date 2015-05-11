require 'spec_helper'

context "socialmind::ruby" do
  describe command('su - deployer -c "which ruby"') do
    its(:stdout) { should match /home\/socialmind\/local\/ruby/ }
  end

  describe command('su - deployer -c "ruby -v"') do
    its(:stdout) { should match /2.2.2/ }
  end
end
