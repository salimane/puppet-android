# Public: Install android version 23
# shell to it.
#
# Examples
#
#   include android::23
class android::23($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '23':
    ensure  => $ensure,
    options => $options,
  }
}
