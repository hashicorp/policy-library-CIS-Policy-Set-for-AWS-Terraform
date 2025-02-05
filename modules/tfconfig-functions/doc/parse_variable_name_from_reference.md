# parse_variable_name_from_reference
This function parses the passed reference to return the variable name.

## Sentinel Module
This function is contained in the [tfconfig-functions.sentinel](../tfconfig-functions.sentinel) module.

## Declaration
`parse_variable_name_from_reference = func(reference)`

## Arguments
* **reference**: the reference used to parse for variable name, given as a string.

## Common Functions Used
None

## What It Returns
This function returns the variable name if the reference is prefixed with `var.` otherwise it returns the original reference.

## What It Prints
This function does not print anything.

## Examples
Here are some examples of calling this function, assuming that the tfconfig-functions.sentinel file that contains it has been imported with the alias `tfconfig`:
```
enabled_var = tfconfig.parse_variable_name_from_reference("var.enabled")
```