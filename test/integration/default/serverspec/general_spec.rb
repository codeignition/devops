require 'spec_helper'

context "socialmind::general" do
  describe package('git-core') do
    it { should be_installed }
  end

  describe package('curl') do
    it { should be_installed }
  end

  describe package('software-properties-common') do
    it { should be_installed }
  end

  describe package('make') do
    it { should be_installed }
  end

  describe user('deployer') do
    it { should exist }
    it { should have_home_directory '/home/deployer' }
  end
end
