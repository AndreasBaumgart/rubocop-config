# Rubocop Config

Shared Rubocop config used in my Ruby / Rails projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-config', github: 'AndreasBaumgart/rubocop-config'
```

And then execute:

    $ bundle

## Usage

There are 2 ways we can add these configs to your project.

### Inherit from Gem

Add these lines to your `.rubocop.yml`:

```yml
# /.rubocop.yml
inherit_gem:
  rubocop-config:
  - rubocop.yml
  
# Some files define `Exclude` for same cops. To merge the `Exclude` rules, add:
inherit_mode:
  merge:
    - Exclude
```

### Inherit from Remote URL (GitHub)

The example below assumes you want to fetch from the latest config (i.e., from `master` branch).

This is recommended if you prefer not to install any gem. Rubocop will download and cache copies of these config files locally.


For more details, please see the [Rubocop documents here](https://rubocop.readthedocs.io/en/latest/configuration/#inheriting-configuration-from-a-remote-url) 

Add these lines to your `.rubocop.yml`

```yml
# /.rubocop.yml
inherit_from:
  - https://raw.githubusercontent.com/AndreasBaumgart/rubocop-config/master/rubocop.yml
```

Add these lines to your `.gitignore` if you wish not to commit the cached copies of these files

```
# .gitignore
.rubocop-*
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
