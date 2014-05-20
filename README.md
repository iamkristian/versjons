# Versjons

This gem will add version information to your rails app. It will read version information from
```
.release_info/VERSION
.release_info/SHA
```
and make it available on the url ``` /version ``` in a json format. Furthermore it will read the timestamp of the ``` .release_info/VERSION ``` file and present that as well.

## Intallation

Include this in your gem file

```
  gem 'versjon'
```

and run ``` bundle install ```

## Configuration

Create an initializer with the following

```
require 'versjons/release_info'

info = Versjons::ReleaseInfo.new(Rails.root)
config = Dummy::Application.config

config.version = info.version
config.sha = info.sha
config.timestamp = info.timestamp
```

And you're good to go.

# License

MIT
