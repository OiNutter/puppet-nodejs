# This is a placeholder class.
class nodejs(
    $provider = $nodejs::provider,
    $prefix = $nodejs::prefix,
    $user = $nodejs::user
) {

    if $::osfamily == 'Darwin' {
        include boxen::config
    }

    $provider_class = "nodejs::${provider}"
    include $provider_class
    include nodejs::build

}
