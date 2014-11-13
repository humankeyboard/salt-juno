mariadb:
  pkg.installed:
    - pkgs:
      - mariadb-server
      - python-mysqldb
  file.managed:
    - name: /etc/mysql/my.cnf
    - source: salt://packages/files/my.cnf
    - user: root
    - group: root
  service:
    - name: mysql
    - running
    - reload: True
    - watch:
      - file: mariadb
