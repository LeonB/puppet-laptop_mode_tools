# Class: laptop_mode_tools::params
#
# This class defines default parameters used by the main module class laptop_mode_tools
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to laptop_mode_tools class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class laptop_mode_tools::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['laptop-mode-tools']
  }

  $enabled = true

}
