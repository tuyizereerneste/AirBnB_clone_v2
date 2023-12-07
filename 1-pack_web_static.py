#!/usr/bin/python3
# Fabric script that generates a .tgz archive from the contents of the web_static

from datetime import datetime
from fabric.api import local


def do_pack():
    """
    Function that creates an archive of web_static
    """
    local("mkdir -p versions")
    time = datetime.now().strftime("%Y%m%d%H%M%S")
    archive = "web_static_{}.tgz".format(time)
    store = local("tar -cvzf versions/{} web_static".format(archive))
    if store is None:
        return None
    else:
        return store
