class laptop_mode_tools::config {

    ## do package before config
    Class['laptop_mode_tools::config'] -> Class['laptop_mode_tools::package']

}
