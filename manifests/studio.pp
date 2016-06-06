# Public: Install Android Studio to /Applications
#
#
# Usage:
#
#     include android::studio
class android::studio($release = '1.2.1.1', $version = '141.1903250') {

  package { "Android Studio-${release}-${version}":
    name     => 'Android Studio',
    provider => 'appdmg',
    source   => "https://dl.google.com/dl/android/studio/install/${release}/android-studio-ide-${version}-mac.dmg",
  }
}
