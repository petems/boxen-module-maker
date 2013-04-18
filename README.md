# boxen-module-maker

A gem for creating boxen modules easier! :)

## Basic Use
```
$ gem install boxen-module-maker
$ boxen-module-maker new_app
boxen-module-maker: [CREATE FOLDER] Making 'puppet-new_app'
	create	puppet-new_app
$ cd puppet-new_app
$ ls
ls
CONTRIBUTING.md	Gemfile		Gemfile.lock	LICENSE		README.md	manifests	script		spec
```

So at the moment, all it does is make a folder and clone the [puppet-template](https://github.com/boxen/puppet-template) folder. Future features will be to customise the specs and such.

== Contributing to boxen-module-maker

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2013 Peter M Souter. See LICENSE.txt for
further details.

