#!/bin/sh

#cd /root/pushpin-app && /sbin/setuser app python3 manage.py celery beat

exec python3 /root/pushpin-app/manage.py celery worker --concurrency=2

#TODO don't run as root
#su -c 'exec python3 /root/pushpin-app/manage.py celery worker --concurrency=2' app
