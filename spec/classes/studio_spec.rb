require 'spec_helper'

describe 'android::studio' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  it do
    should contain_package('Android Studio-1.2.1.1-141.1903250').with({
      :name     => 'Android Studio',
      :provider => 'appdmg',
      :source   => "https://dl.google.com/dl/android/studio/install/1.2.1.1/android-studio-ide-141.1903250-mac.dmg"
    })
  end
end
