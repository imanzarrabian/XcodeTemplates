# XcodeTemplates

## Single View Application With SwiftLint

This is a copy of Apple's built in Single View Application template enhanced with SwiftLint. The template adds the mandatory Run Script and the .swiftlint.yml configuration file to the project.

## Project Templates installation

Copy the One More Thing Studio folder into the template folder in XcodeTemplates, for Xcode 9 located at
```shell
/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS
```
Relaunch Xcode

## Note

You may need to install SwiftLint using Homebrew (cocoapods installation of swiftlint is not supported for now):
```shell
brew install swiftlint
```
[See SwiftLint for a detailed documentation](https://github.com/realm/SwiftLint)

## SwiftLint rules
Here are the rules adopted by the template
To customize these rules you can either create a pull request on the .yml file or update the file directly in your projet

```yaml
disabled_rules:
  - control_statement
opt_in_rules:
  - empty_count
excluded:
  - Carthage
  - Pods
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
force_cast: warning
force_try:
  severity: warning
force_unwrapping:
    severity: warning
implicit_getter:
    severity: warning
implicit_return:
    severity: warning
implicitly_unwrapped_optional:
      severity: warning
line_length: 300
type_body_length:
  - 300
  - 400
file_length:
  warning: 500
  error: 1200
type_name:
  min_length: 4
  max_length:
    warning: 40
    error: 50
  excluded: iPhone
identifier_name:
  min_length:
    error: 2
  excluded:
    - id
    - x
    - y
    - z
reporter: "xcode"
```
[See SwiftLint for the exhaustive list of rules](https://github.com/realm/SwiftLint/blob/master/Rules.md) 
