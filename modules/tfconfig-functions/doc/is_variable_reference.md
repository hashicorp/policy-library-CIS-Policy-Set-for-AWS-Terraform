# is_variable_reference
This function checks if the passed reference is a reference to a variable

## Sentinel Module
This function is contained in the [tfconfig-functions.sentinel](../tfconfig-functions.sentinel) module.

## Declaration
`is_variable_reference = func(reference)`

## Arguments
* **reference**: the reference used to check for a variable, given as a string.

## Common Functions Used
None

## What It Returns
This function returns true if the reference refers to a variable else false.

## What It Prints
This function does not print anything.

## Examples
Here are some examples of calling this function, assuming that the tfconfig-functions.sentinel file that contains it has been imported with the alias `tfconfig`:
```
is_var = tfconfig.is_variable_reference("var.enabled")
```