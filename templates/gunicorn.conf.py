proc_name = "gunicorn"

bind = 'unix:/tmp/{0}.sock'.format(proc_name)
backlog = 2048

workers = 1
worker_class = 'sync'
worker_connections = 1000
timeout = 30
keepalive = 2

debug = False
spew = False

dmaemon = True
pidfile = "/tmp/gunicorn.pid"
umask = 0
user = None
group = None
tmp_upload_dir = None

errorlog = '/var/log/gunicorn/error.log'
loglevel = 'debug'
accesslog = '/var/log/gunicorn/access.log'


