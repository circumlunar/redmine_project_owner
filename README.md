Redmine project owner plugin
============================

About
-----

A plugin for [Redmine](www.redmine.org) which allows an owner to be assigned to a project via project settings.
Any active user can be an owner.

Current version: 0.0.1

Developed on Redmine 4.1.1

Usage
-----

### Install

1. `cd [redmine]/plugins/`
2. `git clone https://github.com/circumlunar/redmine_project_owner.git`
3. `bundle exec rake redmine:plugins:migrate`
4. restart your Redmine server

### Test

`RAILS_ENV=test bundle exec rake redmine:plugins:test`

Sources
-------
Main sources:
1. Redmine official plugin [tutorial](https://www.redmine.org/projects/redmine/wiki/Plugin_Tutorial).
2. Jens Krämer' redmine plugin [tutorial](https://jkraemer.net/2015/11/how-to-create-a-redmine-plugin).

Licensing
---------
* This plugin is created for training purposes and has no special licensing.
