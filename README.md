# boxen-module-maker

A gem for creating boxen modules easier! :)

## Basic Use
```bash
$ gem install boxen-module-maker
$ boxen-module-maker new_app
boxen-module-maker: [CREATE FOLDER] Making 'puppet-new_app'
	create	puppet-new_app
$ cd puppet-new_app
$ ls
ls
CONTRIBUTING.md	Gemfile		Gemfile.lock	LICENSE		README.md	manifests	script		spec
```

Currently, it will create a folder with your given name with the word `puppet` in front of it,
clone [puppet-template](https://github.com/boxen/puppet-template) folder,
and edit the manifest file and spec file so the specs will pass immediately.

## TO-DOS

* Clean up the structure (I took it from a template and kinda bodged it together)
* Make it automatically run `script/cibuild` on the folder
* Fix up the specs (ie. Add some...)

## Contributing to boxen-module-maker

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch with a sensible name
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2013 Peter M Souter. See LICENSE.txt for
further details.

