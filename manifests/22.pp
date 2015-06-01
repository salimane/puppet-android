# Public: Install android version 22
# shell to it.
#
# Examples
#
#   include android::22
class android::22($ensure = present, $options = ['platform', 'add_on']) {
  android::version { '22':
    ensure  => $ensure,
    options => $options,
  }
}
