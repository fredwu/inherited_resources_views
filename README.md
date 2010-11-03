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

## Dependencies

* [Inherited Resources](http://github.com/josevalim/inherited_resources)

## Limitations

When using Rails 2, the generator only generates `Erb` templates, whereas using Rails 3 it generates `Erb` or `Haml` templates accordingly.

## Installation

As a Rails plugin:

    # rails 3
    rails plugin install git://github.com/fredwu/inherited_resources_views.git

    # rails 2
    script/plugin install git://github.com/fredwu/inherited_resources_views.git

As a gem:

    gem install inherited_resources_views

## Usage

It is *extremely* simple to use Inherited Resources Views. The only step you need to do after the installation is to customise the default views:

    # rails 3
    rails generate inherited_resources_views

    # rails 2
    script/generate inherited_resources_views

    # Please remember to restart your server!

This will generate a set of views in your `app/views/inherited_resources` folder. Edit away!

## Author

Copyright (c) 2010 Fred Wu (<http://fredwu.me>), released under the MIT license

* Envato - <http://envato.com>
* Wuit - <http://wuit.com>