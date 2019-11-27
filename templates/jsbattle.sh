#!/bin/bash
{{ jsbattle_home }}/jsbattle/node_modules/jsbattle/dist/jsbattle.js start -h {{ jsbattle_address }} -p {{ jsbattle_port }} -l info -d {{ jsbattle_home }}/jsbattle-data --gaCode {{ jsbattle_ga_code }}
