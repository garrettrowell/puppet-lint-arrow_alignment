# puppet-lint resource defaults

[![Gem Version](https://badge.fury.io/rb/puppet-lint-resource_defaults.svg)](https://badge.fury.io/rb/puppet-lint-resource_defaults)

## Installation
To add the provided lint checks into a module utilizing the PDK:

1. Add the following to the `.sync.yml` in the root of your module
   ``` yaml
   ---
   Gemfile:
     optional:
       ':development':
         - gem: 'puppet-lint-resource_defaults'
   ```
2. Run `pdk update` from the root of the module
3. `pdk validate` will now also use the lint checks provided by this plugin

## Usage
This plugin provides one new check to `puppet-lint`

### **resource_default_arrow_alignme**
`--fix` support: No

This check raises an warning if the arrow alignment is off in resource defaults.
```
warning: indentation of => is not properly aligned (expected in column %d, but found it in column %d)
```
