Redmine project owner plugin
============================

About
-----

A plugin for Redmine[www.redmine.org] which allows an owner to be assigned to a project.
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

Licensing
---------
* This plugin is created for training purposes and has no special licensing.
