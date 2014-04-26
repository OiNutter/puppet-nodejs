class nodejs::nodenv(
    $ensure = $nodejs::nodenv::ensure,
    $prefix = $nodejs::nodenv::prefix,
    $user = $nodejs::nodenv::user,
) {

    repository { $prefix:
        ensure => $ensure,
        force => true,
        source => 'OiNutter/nodenv',
        user => $user
    }

}
