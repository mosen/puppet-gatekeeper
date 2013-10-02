Gatekeeper - A puppet module for managing OSX Gatekeeper/SecAssessment Policy
-----------------------------------------------------------------------------

This module defines a new resource type `Gatekeeper` which controls the master gatekeeper policy.

Features
--------

It is planned to support enabling or disabling gatekeeper in the first version.
It may support individual application policies in the future.

Example
-------

The rule name `master` will be reserved to mean `--disable-master` or `--enable-master` respectively.
Later, if individual rules are implemented. The resource can be identified by the rule name.

```ruby

gatekeeper { "master":
  enabled => false,
}

```
