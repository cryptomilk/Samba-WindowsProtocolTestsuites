#!/bin/bash
#
#  Copyright 2016 Andreas Schneider <asn@samba.org>
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

REALM="KRB.SAMBATEST.SITE"
DOMAIN="SAMBAKRB"
DNS_FORWARDER="10.10.100.30"

# Administrator password
ADMIN_PASSWORD="Password01@"

# Machine account password for self join
MACHINE_ACCOUNT_PASSWORD="Password01!"

samba-tool domain provision --realm=$REALM \
                            --domain=$DOMAIN \
                            --adminpass=$ADMIN_PASSWORD \
                            --machinepass=$MACHINE_ACCOUNT_PASSWORD \
                            --option="dns forwarder = $DNS_FORWARDER" \
                            --option="log level = 5" \
                            --option="max log size = 0" \
                            --option="debug pid = yes"
