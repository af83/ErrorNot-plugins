ErrornotResque
==============

Extract some task in resque queue system.

Improve performance in creation and update of model.

This plugin is a ErrorNot plugin. You can use it only
with ErrorNot (http://github.com/AF83/ErrorNot)


Dependencies
============

Software:
 * Redis  ~> 1.2.2

Rubygems:
 * redis  ~> 1.0.7
 * resque ~> 1.5.2
 * json, or better `json_pure`


Install
=======

You can install it in your ErrorNot directory in vendor/plugins directory

If you copy into this directory. This plugin is active. You can't desactivate it
without delete source from ErrorNot repository.

Do not forget to create the `config/resque.yml` file:

    development: localhost:6379
    production: localhost:6379

You need launch some worker to execute all task push in queue system. You can launch
your worker by command :

    $ QUEUE=* RAILS_ENV=production rake resque:work

See the resque documentation about this task.

Copyright (c) 2010 af83, released under the MIT license
