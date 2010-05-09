define localtime::etc_localtime (
    $zoneinfo =  '/usr/share/zoneinfo/Europe/Zurich'
){
    file { "/etc/localtime":
            ensure => link,
            target => "${zoneinfo}",
    }
}

