require 'spec_helper'

context "socialmind::mysql" do
  describe port(27017) do
    it { should be_listening }
  end
end
