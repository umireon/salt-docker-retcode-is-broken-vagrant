docker:
  pkg:
    - installed
  service:
    - running
    - enable: True
   
python-docker-py:
  pkg.installed

busybox:
  docker.pulled:
    - tag: latest
    - require:
      - pkg: docker
      - pkg: python-docker-py
container:
  docker.installed:
    - image: busybox
    - require:
      - docker: busybox
echo desired not to be executed:
  docker.run:
    - cid: container
    - docked_unless: /bin/true
