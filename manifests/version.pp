class nodejs::version(
  $ensure  = 'installed',
  $env     = {},
  $version = $name
) {

    require nodejs
    require nodejs::build

    exec { "install nodejs version":
        command => "nodenv install",
        arguments => $version
    }

}
