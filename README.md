# XcodeTemplates

## Single View Application With SwiftLint

This is a copy of Apple's built in Single View Application template enhanced with SwiftLint. The template adds the mandatory Run Script and the .swiftlint.yml configuration file to the project.

## Project Templates installation

Copy the One More Thing Studio folder into the template folder in XcodeTemplates, for Xcode 9 located at
```shell
/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS
```
Relaunch Xcode


An alternative approach is to use the installation script (which works only for Xcode 9) which gives you the opportunity the rename the template folder as well.
```shell
install.sh {optional_install_directory_name} #e.g install.sh MyPersonalTemplates
```
Relaunch Xcode


![OMTS Single View App Template with SwiftLint](https://raw.githubusercontent.com/OMTS/XcodeTemplates/master/xcodetemplate.png)

## Note

You may need to install SwiftLint using Homebrew (This template does not support the cocoapods installation of swiftlint yet):
```shell
brew install swiftlint
```
[See SwiftLint for a detailed documentation](https://github.com/realm/SwiftLint)

## SwiftLint rules
Here are the rules adopted by the template
To customize these rules you can either create a pull request on the .yml file or update the file directly in your projet

```yaml
disabled_rules: # rule identifiers to exclude from running
  - control_statement
  - line_length
  - conditional_binding_cascade
opt_in_rules: # some rules are only opt-in
  - empty_count
  - missing_docs
  # Find all the available rules by running:
  # swiftlint rules
excluded: # paths to ignore during linting. Takes precedence over `included`.
  - Carthage
  - Pods

# configurable rules can be customized from this configuration file
# binary rules can set their severity level
attributes:
    severity: warning
colon:
    severity: warning
comma:
    severity: warning
closure_spacing:
    severity: warning
control_statement:
    severity: warning
cyclomatic_complexity:
    severity: warning
discouraged_direct_init:
    severity: error
empty_count:
    severity: warning
empty_parameters:
    severity: warning
empty_parentheses_with_trailing_closure:
    severity: warning
fatal_error_message:
    severity: error
first_where:
    severity: warning
for_where:
    severity: warning
force_cast: warning # implicitly
force_try:
  severity: warning # explicitly
force_unwrapping:
    severity: warning
implicit_getter:
    severity: warning
implicit_return:
    severity: warning
implicitly_unwrapped_optional:
      severity: warning
trailing_closure:
      severity: warning
type_body_length:
  - 300 # warning
  - 400 # error
file_length:
  warning: 500
  error: 1200
type_name:
  min_length: 4 # only warning
  max_length: # warning and error
    warning: 40
    error: 50
  excluded: iPhone # excluded via string
identifier_name:
  min_length: # only min_length
    error: 2 # only error
  excluded: # excluded via string array
    - id
    - x
    - y
    - z
reporter: "xcode" # reporter type (xcode, json, csv, checkstyle, junit, html, emoji)
```
[See SwiftLint for the exhaustive list of rules](https://github.com/realm/SwiftLint/blob/master/Rules.md)
