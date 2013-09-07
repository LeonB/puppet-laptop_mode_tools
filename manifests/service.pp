class laptop_mode_tools::service {

  service { 'laptop-mode':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['laptop_mode_tools::package'],
  }
}
