# Public: Install Android Studio to /Applications
#
#
# Usage:
#
#     include android::studio
class android::studio($release = '1.0.1', $version = '1641136') {

  case $release[0] {
    '0' : { $_source = "http://dl.google.com/android/studio/install/${release}/android-studio-bundle-${version}-mac.dmg" }
    '1' : { $_source = "https://dl.google.com/dl/android/studio/install/${release}/android-studio-ide-${version}.dmg" }
  }

  package { 'Android Studio-{$release}-{$version}':
    provider => 'appdmg',
    source   => $_source
  }
}
