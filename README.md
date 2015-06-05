knife-depgraph
===========

knife-depgraph is a knife plugin to display the dependency information
for all the of the cookbooks used by a given node.


Installation
------------

As with all knife plugins, just install the gem:

```
gem install knife-depgraph
```

If using ChefDK, run `chef gem` instead of `gem`.

Usage:
------

```
knife depgraph NODE
```

Produces output like:

```json
{
  "7-zip": {
    "version": "1.0.2",
    "deps": {
      "windows": ">= 1.2.2"
    }
  },
  "annoyances": {
    "version": "0.1.3",
    "deps": {

    }
  },
  "apache2": {
    "version": "1.0.1",
    "deps": {

    }
  },
  "apt": {
    "version": "2.3.10",
    "deps": {

    }
  },
```

Capture it to a file with standard shell redirection:

```
bundle exec knife depgraph NODE > dep_graph.json
```

Diagnostic messages will be printed to stderr.

Acknowledgements
----------------

knife-depgraph is based on
[knife-solve](https://github.com/coderanger/knife-solve) by
[Noah Kantrowitz](http://coderanger.net/).

Thanks Noah!
