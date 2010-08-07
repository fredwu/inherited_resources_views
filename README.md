# Inherited Resources Views

## Introduction

Using [Inherited Resources](http://github.com/josevalim/inherited_resources) is an excellent way to reduce the amount of repetition in your controllers. But what about views? A lot of times resources share the same views, so why not DRY 'em up using Inherited Resources Views!

Brought to you by [Envato](http://envato.com) and [Wuit](http://wuit.com).

## Difference to Other Seemly Similar Projects

If you are confused about the difference to some other similarly named projects, please read on.

### Difference to Inherit Views

[Inherit Views](http://github.com/ianwhite/inherit_views) adds the ability to render views from parent controllers. It does not share views between different resources.

### Difference to Inherited Views

[Inherited Views](http://github.com/gregbell/inherited_views) tries to solve the same problem we're solving, but from a slightly different angle. It is more complex, requires [Formtastic](http://github.com/justinfrench/formtastic) and [WillPaginate](http://github.com/mislav/will_paginate), and it only generates erb templates. **Inherited Resources Views** on the other hand, is extremely simple, is library-agnostic (it only depends on [Inherited Resources](http://github.com/josevalim/inherited_resources)), and it supports both erb and [haml](http://github.com/nex3/haml) templates.

## Todo

* Add tests
* Make default views more elegant and perhaps customisable

## Dependencies

* [Inherited Resources](http://github.com/josevalim/inherited_resources)

## Installation

As a Rails plugin:

    rails plugin install git://github.com/fredwu/inherited_resources_views.git

As a gem:

    gem install inherited_resources_views

## Usage

It is *extremely* simple to use Inherited Resources Views. The only step you need to do after the installation is to customise the default views:

    rails generate inherited_resources_views

This will generate a set of views in your `app/views/inherited_resources` folder. Edit away!

## Author

Copyright (c) 2010 Fred Wu (<http://fredwu.me>), released under the MIT license

* Envato - <http://envato.com>
* Wuit - <http://wuit.com>