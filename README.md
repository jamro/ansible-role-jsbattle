Ansible Role: JsBattle
=========

Installs [JsBattle](https://github.com/jamro/jsbattle) server.

Requirements
------------

- CentOS
- NodeJS & NPM

Role Variables
--------------

  jsbattle_address: 127.0.0.1

Address where the server will bind. To access it on any network interface (internal or external) set variable to `0.0.0.0`. JsBattle will be available at http://{{jsbattle_address}}:{{jsbattle_port}}/

  jsbattle_port: 8080

Port where the server will listen. Please note that port 80 may be not available for non-root users (see `jsbattle_user` varaible for more info). JsBattle will be available at http://{{jsbattle_address}}:{{jsbattle_port}}/

  jsbattle_version: HEAD

Version of JsBattle to deploy. To get the latest one set to `HEAD`. List of available versions and changelogs are available [here](https://github.com/jamro/jsbattle/releases)

  jsbattle_user: jsbattle-user

User that will run JsBattle server. For security reasons it is recommended to run it as non-root user. If you want to host JsBattle server at port 80, please run it locally on another port (e.g. 8080) behind Nginx and set up HTTP forwarding.

  jsbattle_home: /home/jsbattle-user

Location where JsBattle will be deployed. Remember that `jsbattle_user` must have access to it.


Dependencies
------------

None

Example Playbook
----------------

  - hosts: webserver
    become: true
    become_method: sudo
    roles:
      - role: jamro.jsbattle
        jsbattle_port: 8080
        jsbattle_address: 127.0.0.1
        jsbattle_user: tankmaster
        jsbattle_home: /home/tankmaster

License
-------

MIT

Author Information
------------------

This role was created in 2018 by Jeff Krzysztof Jamroz, author of [JsBattle](https://github.com/jamro/jsbattle).
