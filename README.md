postfix docker container
========================

* Based on `alpine:latest`
* `/etc/postfix` & `/var/spool/postfix` declared as a volumes
* cyrus sasl plain installed
* ca-certificates installed
* has syslogd integrated; logs to stdout
* network is set to `0.0.0.0/0`

