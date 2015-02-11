require 'spec_helper'

describe 'android::studio' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it do
    should contain_package('Android Studio').with({
      :provider => 'appdmg',
      :source   => "https://dl.google.com/dl/android/studio/install/1.0.1/android-studio-ide-1641136.dmg"
    })
  end
end
