# Public: Install Android Studio to /Applications
#
#
# Usage:
#
#     include android::studio
class android::studio($release = '1.0.1', $version = '1641136') {

  $_major_version = split($release, '.')
  case $_major_version[0] {
    '0' : { $_source = "http://dl.google.com/android/studio/install/${release}/android-studio-bundle-${version}-mac.dmg" }
    '1' : { $_source = "https://dl.google.com/dl/android/studio/install/${release}/android-studio-ide-${version}.dmg" }
    default : { $_source = "https://dl.google.com/dl/android/studio/install/${release}/android-studio-ide-${version}.dmg" }
  }

  package { 'Android Studio':
    provider => 'appdmg',
    source   => $_source
  }
}
