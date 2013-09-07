class laptop_mode_tools(
  $packages = params_lookup( 'packages' ),
  $enabled  = params_lookup( 'enabled' ),
  ) inherits laptop_mode_tools::params {

    $ensure = $enabled ? {
      true => present,
      false => absent
    }

  include laptop_mode_tools::package, laptop_mode_tools::config, laptop_mode_tools::service
}
