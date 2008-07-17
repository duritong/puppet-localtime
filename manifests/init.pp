# modules/localtime/manifests/init.pp - manage localtime stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3

# modules_dir { "localtime": }

class localtime {
}

define localtime::etc_localtime (
    $zoneinfo =  '/usr/share/zoneinfo/Europe/Zurich'
){
    include localtime

    file { "/etc/localtime":
            ensure => link,
            target => "${zoneinfo}",
    }
}

