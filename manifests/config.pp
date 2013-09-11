class laptop_mode_tools::config {

  ## do package before config
  Class['laptop_mode_tools::config'] -> Class['laptop_mode_tools::package']

  # See https://help.ubuntu.com/community/PowerManagement/ReducedPower
  file { '/etc/pm/sleep.d/10-laptop-mode-tools':
    ensure => $laptop_mode_tools::ensure,
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/laptop_mode_tools/10-laptop-mode-tools',
    mode   => 0755, #rwx,rxmrx
  }

}
