#!/bin/bash

# Bootstrap and exit if KOLLA_BOOTSTRAP variable is set. This catches all cases
# of the KOLLA_BOOTSTRAP variable being set, including empty.
if [[ "${!KOLLA_BOOTSTRAP[@]}" ]]; then
    ceilometer-manage db_sync
    sudo chown -R ceilometer: /var/lib/ceilometer/
    exit 0
fi
