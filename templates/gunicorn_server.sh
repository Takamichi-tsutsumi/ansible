#!/bin/sh

GUNICORN=$HOME/virtualenv/path/bin/gunicorn
PROJECT_ROOT=/path/to/django

APP=app:app

cd $PROJECT_ROOT
exec $GUNICORN -c $PROJECT_ROOT/gunicorn.conf.py $APP
