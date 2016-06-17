require 'spec_helper_acceptance'

describe 'vision_logcheck' do

  context 'with defaults' do
    it 'should idempotently run' do
      pp = <<-EOS
        class { 'vision_logcheck': }
      EOS

      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
  end

  context 'package installed' do
    describe package('logcheck') do
      it { should be_installed}
    end
  end

  context 'files provisioned' do
    describe file('/etc/logcheck/ignore.d.server') do
      it { should be_directory }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'logcheck' }
    end

    describe file('/etc/logcheck/ignore.d.server/custom_ssh') do
      it { should be_file }
    end


  end

end
