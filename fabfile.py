from fabric.api import *
import time

env.user = 'aegir'
env.shell = '/bin/bash -c'

def cron(site):
  print "===> Running Drush Cron"
  run("drush @%s cron --debug" %site)
