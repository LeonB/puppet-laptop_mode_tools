define laptop_mode_tools::control_service(
        $service = $name,
) {

    file { "/etc/laptop-mode/batt-stop/${service}":
        ensure => "/etc/init.d/${service}",
        notify  => Class['laptop_mode_tools::service']
    }

}
